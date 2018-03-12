#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <util/delay.h>

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

// Timer 1 Control Register B : 
//   WGM1=000 : Clear Timer on Compare Match (CTC) mode (0 -> OCRA)
//   CS1 :      T1 Prescaller F/64
#define myTCCR1B (_BV(WGM12) | (T1_Prescaller_64))

uint32_t milliscount = 0;

ISR( TIMER1_COMPA_vect )
{
  milliscount++;
}

void setTimer(void)
{
  // STOP INTERRUPTS
  cli();
  // Clear Timer/Counter1
  TCNT1 = 0;
  // Clear counter
  milliscount = 0;
  // Timer 1 Output Compare Register A
  OCR1A = 125;
  // Timer 1 Interrupt Mask Register
  TIMSK = _BV(OCIE1A);
  // Timer 1 Timer Control Register B : see #define
  TCCR1B = myTCCR1B;
  // SET INTERRUPTS
  sei();
}

void stopTimer(void)
{
  // Timer Control Register B : Stop Timer 1
  TCCR1B = 0;
}

void resumeTimer(void)
{
  // Timer 1 Timer Control Register B : see #define
  TCCR1B = myTCCR1B;
}

uint32_t millis(void)
{
  return milliscount;
}
