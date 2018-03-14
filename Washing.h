#ifndef _EM_Washing_h_
#define _EM_Washing_h_

enum WashStatus
{
  NO_WASH,
  START_WASH,
  PRE_WASH,
  MAIN_WASH,
  RINCE,
  DRY,
  END_WASH,
  PAUSE_WASH,
  ABORT_WASH
};

enum RotationStatus 
{
  NO_ROTATION,
  RUN1_ROTATION,
  RUN2_ROTATION,
  PAUSE_ROTATION,
  STOP_ROTATION
};

// Shared functions
// ----------------
void    RotationControl(void);
void    WashControl(void);
void    StartWash(void);
void    AbortWash(void);
uint8_t NoWash(void);
void DisplayStatus(void);

#endif
