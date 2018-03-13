/////////////////////////////////////////////
// KostasWash v2.0                         //
// ---------------                         //
// Target CPU : Atmega8535 at 8MHz (int.)  //
/////////////////////////////////////////////

#include "KostasWash.h"

//---------------+----------------+--------------------------------------------------
// LCD display : |Washing  Run   +|
//---------------+0123456789012345+--------------------------------------------------


//-----------------------------------------------------------------------------------
// Interrupt Service Routine : Pin change for Switch (INT0=PD2)
//-----------------------------------------------------------------------------------
ISR(INT0_vect)
{
  static uint32_t start = 0;
  if(millis() > start+20)
  {
    if(SWITCH) // On=Released
      SwitchPressed = (millis()-start > 500 ? 2 : 1);
    else // Off=Pressed
      start = millis();
  }
}

//-----------------------------------------------------------------------------------
// Interrupt Service Routine : Pin change for Encoder A (INT1=PD3)
//-----------------------------------------------------------------------------------
ISR(INT1_vect)
{
  static uint32_t debounce = 0;
  if(millis() > debounce)
  {
    if(ENCODER_B) EncoderCount--; else EncoderCount++;
    EncoderChanged = true;
    debounce = millis() + 60;
  }
}

//-----------------------------------------------------------------------------------
// Initialisation
//-----------------------------------------------------------------------------------
void initialise(void)
{
  // Ports direction
  DDRA = 0xFF;                           // PORTA Output for Relays
  DDRC = 0xFF;                           // PORTC Output for Relays  
  DDRB = _BV(PB0) | _BV(PB2) | _BV(PB3); // PB0, PB2 and PB3 Output for LCD
  DDRD = _BV(PD5) | _BV(PD6) | _BV(PD7); // PD5, PD6 and PD7 Output for LCD
  // All relays to 1 (inverted logic)
  PORTA = 0xFF;
  PORTC = 0xFF;
  // Pull up resitors
  PORTD = _BV(PD2) | _BV(PD3) | _BV(PD4);// Pin D2,D3,D4 Pull Up for Switch and encoder
  // Define interrupt on pin change (INT0=PD2 and INT1=PD3)
  MCUCR = _BV(ISC11) | _BV(ISC00);       // ISC1=10 Interrupt on falling edge, ISC0=01 on any change
  GICR  = _BV(INT0)  | _BV(INT1);        // Enable INT0 and INT1 interrupts
  sei();                                 // Enable Interrupts
  // Start Timer
  setTimer();
  // LCD
  LCD_begin();
  LCD_specialCar();
  LCD_puts("KostasWash v2.0\n");
  _delay_ms(1000);
  LCD_puts("Waiting  Stop  +");
  SwitchPressed  = NO_PRESS;
}

//-----------------------------------------------------------------------------------
// Rotation State Machine
//-----------------------------------------------------------------------------------
void RotationControl(void)
{
  static uint32_t  NextTime = 0;
  if(millis() > NextTime && RotationState != NO_ROTATION)
  {
    switch(RotationState)
    {
      case RUN1_ROTATION:
        RELAY01_OFF();                    // Rotation direction 1
        RELAY02_ON();                     // Start Motor
        NextTime = millis()+seconds(3);   // Duration : 3 sec.
        LCD_move(0,15);
        LCD_putc('+');
        RotationState = PAUSE1_ROTATION;
      break;
      case PAUSE1_ROTATION:
        RELAY02_OFF();                    // Stop Motor
        NextTime = millis()+seconds(1);   // Duration : 1 sec.
        RotationState = RUN2_ROTATION;
        LCD_move(0,15);
        LCD_putc('o');
      break;
      case RUN2_ROTATION:
        RELAY01_ON();                      // Rotation direction 2
        RELAY02_ON();                      // Start Motor
        NextTime = millis()+seconds(3);    // Duration : 3 sec.
        RotationState = PAUSE2_ROTATION;
        LCD_move(0,15);
        LCD_putc('-');
      break;
      case PAUSE2_ROTATION:
        RELAY02_OFF();                     // Stop Motor
        NextTime = millis()+seconds(1);    // Duration : 1 sec.
        RotationState = RUN1_ROTATION;
        LCD_move(0,15);
        LCD_putc('o');
      break;
      case STOP_ROTATION:
        RELAY01_OFF();                     // Rotation direction off
        RELAY02_OFF();                     // Stop Motor
        RotationState = NO_ROTATION;
        LCD_move(0,15);
        LCD_putc('x');      
      break;
    }
  }
}

//-----------------------------------------------------------------------------------
// Washing State Machine
//-----------------------------------------------------------------------------------
void WashControl(void)
{
  static uint32_t  NextTime = 0;
  if(millis() > NextTime && WashState != NO_WASH)
  {
    switch(WashState)
    {
      case START_WASH:
        NextTime = millis()+seconds(2);
        WashState = PRE_WASH;
        LCD_move(0,0);
        LCD_puts("Start   ");
      break;
      case PRE_WASH:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = MAIN_WASH;
        RotationState = RUN1_ROTATION;
        LCD_move(0,0);
        LCD_puts("PreWash ");
      break;
      case MAIN_WASH:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = RINCE;
        RotationState = STOP_ROTATION;
        LCD_move(0,0);
        LCD_puts("Wash    ");
      break;
      case RINCE:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = DRY;
        LCD_move(0,0);
        LCD_puts("Rince   ");
      break;
      case DRY:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = END_WASH;
        LCD_move(0,0);
        LCD_puts("Dry     ");
      break;
      case END_WASH:
        WashState = NO_WASH;
        LCD_move(0,0);
        LCD_puts("Waiting ");
      break;
    }
  }
}


//-----------------------------------------------------------------------------------
// MAIN
//-----------------------------------------------------------------------------------
int main(void)
{
  //uint8_t  ActualMenu = WAIT_MENU;
  //char message[32];
  initialise();
  EncoderChanged = true;
  //
  // Main loop
  // ---------
  while(1)
  {
    // Check is the encoder's switch has changed
    // -----------------------------------------
    if(SwitchPressed)
    {
      if(SwitchPressed == LONG_PRESS)
      {
        // Emergency Stop...
        // Stop everything... : All relays to 1 (inverted logic)
        PORTA = 0xFF;
        PORTC = 0xFF;        
        LCD_cls();
        LCD_puts("Emergency STOP\n");
        while(!0);
      }
      else 
      {
        if(WashState == NO_WASH)  WashState = START_WASH;
        else                      WashState = END_WASH;
      }
      SwitchPressed = NO_PRESS;
    }
    // Check if the encoder counter has changed
    // ----------------------------------------
    if(EncoderChanged)
    {
      EncoderChanged = false;
    }
    // Update : Rotation Machine State
    // -------------------------------
    RotationControl();
    // Update : Washing Machine State
    // ------------------------------
    WashControl();
  }
  // End of the Main loop (never ends)
  // ---------------------------------
}
