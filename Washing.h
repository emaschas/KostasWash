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
  END_WASH
};
enum RotationStatus 
{
  NO_ROTATION,
  RUN1_ROTATION,
  PAUSE1_ROTATION,
  RUN2_ROTATION,
  PAUSE2_ROTATION,
  STOP_ROTATION
};

// Shared Variables
// ----------------
// Program Variables : Washing
volatile uint8_t  WashState = NO_WASH;
// Program Variables : Rotation (during Washing)
volatile uint8_t  RotationState = NO_ROTATION;

#endif
