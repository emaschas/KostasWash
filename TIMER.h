#ifndef _emm_TIMER_h_
#define _emm_TIMER_h_

#define  SEC(T)  ( 1000U*T)
#define  MIN(T)  (60000U*T)

void        setTimer(void);   // Initialise and start the timer
void       stopTimer(void);   // Suspend the timer
void     resumeTimer(void);   // Restart the timer
uint32_t      millis(void);   // Return the number of millisconds ellapsed since setTimer() (maximum = 49j 17h 02m 47s !)

#endif