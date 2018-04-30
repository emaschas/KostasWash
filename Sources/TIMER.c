#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <util/delay.h>

int coucou = 123;

//======================================================
//            MCU   =   ATmega8353 at 8MHz
//======================================================
// Possible values:
// F=8MHz - Prescaler F/8    - OCRA=100    -> 100us
// F=8MHz - Prescaler F/64   - OCRA=12500  -> 100ms
// F=8MHz - Prescaler F/64   - OCRA=125    -> 1ms
// F=8MHz - Prescaler F/256  - OCRA=31250  -> 1s
//======================================================
#define T1_Prescaller_1    ( _BV(CS10) )
#define T1_Prescaller_8    ( _BV(CS11) )
#define T1_Prescaller_64   ( _BV(CS10) | _BV(CS11) )
#define T1_Prescaller_256  ( _BV(CS12) )
#define T1_Prescaller_1024 ( _BV(CS10) | _BV(CS12) )

volatile uint32_t CountDown1 = 0;
volatile uint32_t CountDown2 = 0;
volatile uint16_t CountDown3 = 0;
volatile uint16_t CountDown4 = 0;

ISR(TIMER1_COMPA_vect)
{
  if(CountDown1>0) CountDown1--;
  if(CountDown2>0) CountDown2--;
  if(CountDown3>0) CountDown3--;
  if(CountDown4>0) CountDown4--;
}

void initTimer(void)
{
  // STOP INTERRUPTS
  cli();
  // Clear Timer/Counter1
  TCNT1 = 0;
  // Clear counter
  CountDown1 = 0;
  CountDown2 = 0;
  CountDown3 = 0;
  CountDown4 = 0;
  // Timer 1 Output Compare Register A
  OCR1A = 125;
  // Timer 1 Interrupt Mask Register
  TIMSK = _BV(OCIE1A);
  // Timer 1 Control Register B : 
  //   WGM1=000 : Clear Timer on Compare Match (CTC) mode (0 -> OCRA)
  //   CS1 :      T1 Prescaller F/64
  TCCR1B = _BV(WGM12) | (T1_Prescaller_64);
  // SET INTERRUPTS
  sei();
}
