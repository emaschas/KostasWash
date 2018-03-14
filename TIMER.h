#ifndef _emm_TIMER_h_
#define _emm_TIMER_h_

// maximum time with uint32_t = 49j 17h 02m 47s
// maximum time with uint16_t =         01m 05s

#define  seconds(T)  ( 1000U*T)
#define  minutes(T)  (60000U*T)

void       initTimer(void);           // Initialise and start the timer
void     startTimer1(uint32_t count); // Start count down 1 for "count" milliseconds
void     startTimer2(uint16_t count); // Start count down 2 for "count" milliseconds
void     startTimer3(uint16_t count); // Start count down 3 for "count" milliseconds
void     startTimer4(uint16_t count); // Start count down 4 for "count" milliseconds
uint32_t  countDown1(void);           // Return the number of millisconds ellapsed left for count down 1
uint16_t  countDown2(void);           // Return the number of millisconds ellapsed left for count down 2
uint16_t  countDown3(void);           // Return the number of millisconds ellapsed left for count down 3
uint16_t  countDown4(void);           // Return the number of millisconds ellapsed left for count down 4

#endif
