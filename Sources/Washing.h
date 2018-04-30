#ifndef _EM_Washing_h_
#define _EM_Washing_h_

#include "TIMER.h"

// Shared functions
// ----------------

void    RotationControl(void);
void    DisplayRotationStatus(void);

void    WashControl(void);
void    StartWash(void);
void    AbortWash(void);
uint8_t NoWash(void);
void    DisplayWashStatus(void);

void    SelectProgram(uint8_t programme);
void    DisplayProgram(void);

#endif
