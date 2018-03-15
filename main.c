/////////////////////////////////////////////
// KostasWash v2.0                         //
// ---------------                         //
// Target CPU : Atmega8535 at 8MHz (int.)  //
/////////////////////////////////////////////

#include "KostasWash.h"
#include "Washing.h"

// System variables
volatile uint8_t  SwitchPressed  = NO_PRESS;
volatile uint8_t  EncoderChanged = false;
volatile uint8_t  EncoderCount   = 0;
// Program Variables : Menus
volatile uint8_t  MenuState = WAIT_MENU;

//-----------------------------------------------------------------------------------
// Interrupt Service Routine : Pin change for Switch (INT0=PD2)
//-----------------------------------------------------------------------------------
ISR(INT0_vect)
{
  if(countDown3() < 480) // Debouce time 20ms
  {
    if(SWITCH) // On=Released
      SwitchPressed = (countDown3() == 0 ? LONG_PRESS : SHORT_PRESS);
    else // Off=Pressed
      startTimer3(500);
  }
}

//-----------------------------------------------------------------------------------
// Interrupt Service Routine : Pin change for Encoder A (INT1=PD3)
//-----------------------------------------------------------------------------------
ISR(INT1_vect)
{
  if(countDown4() == 0)
  {
    if(ENCODER_B) EncoderCount--; else EncoderCount++;
    EncoderChanged = true;
    startTimer4(60);
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
  initTimer();
  // LCD
  LCD_begin();
  LCD_specialCar();
  LCD_puts("KostasWash v2.0\n");
  _delay_ms(1000);
  DisplayStatus();
  SwitchPressed  = NO_PRESS;
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
      if(SwitchPressed == SHORT_PRESS)
      {
        if(NoWash()) StartWash(); else AbortWash();
      }
      else // LONG_PRESS = Emergency Stop...
      {
        PORTA = 0xFF; // Stop everything : All relays to 1 (inverted logic)
        PORTC = 0xFF;        
        LCD_cls();
        LCD_puts("Emergency STOP\n");
        while(!0);
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
