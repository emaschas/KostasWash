/////////////////////////////////////////////
// KostasTEST v1.0                         //
// ---------------                         //
// Target CPU : Atmega8535 at 8MHz (int.)  //
/////////////////////////////////////////////

#include "Hardware.h"
#include "Test.h"

// System variables
volatile uint8_t  SwitchPressed  = NO_PRESS;
volatile uint8_t  EncoderChanged = false;
volatile uint8_t  EncoderCount   = 0;

//-----------------------------------------------------------------------------------
// Interrupt Service Routine : Pin change for Switch (INT0=PD2)
//-----------------------------------------------------------------------------------
ISR(INT0_vect)
{
  #define LONG_PRESS_TIME 1000 // milliseconds
  if(CountDown3 < (LONG_PRESS_TIME-20)) // Debouce time 20ms
  {
    if(SWITCH) // On=Released
      SwitchPressed = (CountDown3 == 0 ? LONG_PRESS : SHORT_PRESS);
    else // Off=Pressed
      CountDown3 = LONG_PRESS_TIME;
  }
}

//-----------------------------------------------------------------------------------
// Interrupt Service Routine : Pin change for Encoder A (INT1=PD3)
//-----------------------------------------------------------------------------------
ISR(INT1_vect)
{
  if(CountDown4 == 0)
  {
    if(ENCODER_B) EncoderCount--; else EncoderCount++;
    EncoderChanged = true;
    CountDown4 = 60; // Debouce time 60ms
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
  LCD_puts("KostasTEST v1.0\n");
  _delay_ms(1000);
  LCD_cls();
  DisplayChoice(EncoderCount);
}


//-----------------------------------------------------------------------------------
// MAIN
//-----------------------------------------------------------------------------------
int main(void)
{
  SwitchPressed  = NO_PRESS;
  EncoderChanged = false;
  initialise();
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
        ToggleRelay(EncoderCount); 
        DisplayChoice(EncoderCount);
      }
      else // LONG_PRESS = Stop everything...
      {
        PORTA = 0xFF; // Stop everything : All relays to OFF = 1 (inverted logic)
        PORTC = 0xFF;        
        LCD_cls();
        LCD_puts("STOP ALL !\n");
        _delay_ms(3000);
        DisplayChoice(EncoderCount);
      }
      SwitchPressed = NO_PRESS;
    }
    // Check if the encoder counter has changed
    // ----------------------------------------
    if(EncoderChanged)
    {
      DisplayChoice(EncoderCount);
      EncoderChanged = false;
    }
  }
  // End of the Main loop (never ends)
  // ---------------------------------
}
