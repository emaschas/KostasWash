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

uint32_t milliscount1 = 0;
uint32_t milliscount2 = 0;
uint16_t milliscount3 = 0;
uint16_t milliscount4 = 0;

ISR(TIMER1_COMPA_vect)
{
  if(milliscount1>0) milliscount1--;
  if(milliscount2>0) milliscount2--;
  if(milliscount3>0) milliscount3--;
  if(milliscount4>0) milliscount4--;
}

void initTimer(void)
{
  // STOP INTERRUPTS
  cli();
  // Clear Timer/Counter1
  TCNT1 = 0;
  // Clear counter
  milliscount1 = 0;
  milliscount2 = 0;
  milliscount3 = 0;
  milliscount4 = 0;
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

void startTimer1(uint32_t count) { milliscount1 = count; }
void startTimer2(uint16_t count) { milliscount2 = count; }
void startTimer3(uint16_t count) { milliscount3 = count; }
void startTimer4(uint16_t count) { milliscount4 = count; }

uint32_t countDown1(void) { return milliscount1; }
uint16_t countDown2(void) { return milliscount2; }
uint16_t countDown3(void) { return milliscount3; }
uint16_t countDown4(void) { return milliscount4; }
