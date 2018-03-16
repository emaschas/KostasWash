#ifndef _EM_Washing_h_
#define _EM_Washing_h_

#include "TIMER.h"

#define    NO_WASH 0xFF
#define ABORT_WASH 0xFE

enum RotationStatus 
{
  NO_ROTATION,
  RUN1_ROTATION,
  RUN2_ROTATION,
  PAUSE_ROTATION,
  STOP_ROTATION
};

typedef struct
{
  uint32_t duration;   // Duration of this step
  uint16_t mask;       // mask for PORTA (LSB) and PORTC (MSB)
  uint8_t  rotation:1; // step with rotation 
  uint8_t  text:4;     // index of text for display
} step;

// Shared functions
// ----------------
void    RotationControl(void);
void    WashControl(void);
void    StartWash(void);
void    AbortWash(void);
uint8_t NoWash(void);
void    DisplayRotationStatus(void);
void    DisplayWashStatus(void);

#endif
