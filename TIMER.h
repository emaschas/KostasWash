#ifndef _emm_TIMER_h_
#define _emm_TIMER_h_

// maximum time with uint32_t = 49j 17h 02m 47s
// maximum time with uint16_t =         01m 05s

#define  seconds(T)  ( 1000U*T)
#define  minutes(T)  (60000U*T)

void       initTimer(void);           // Initialise and start the timer

volatile uint32_t CountDown1;         // Return the millisconds left for count down 1
volatile uint32_t CountDown2;         // Return the millisconds left for count down 2
volatile uint16_t CountDown3;         // Return the millisconds left for count down 3
volatile uint16_t CountDown4;         // Return the millisconds left for count down 4

#endif
