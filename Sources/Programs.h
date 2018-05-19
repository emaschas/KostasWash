#include <avr/pgmspace.h>

// Washing programs definitions
// ----------------------------

// Structures definitions
// ----------------------
typedef struct
{
  uint32_t duration;   // Duration of this step
  uint8_t  data;       // bit 7 end of this program, 
                       // bit 6 step with normal rotation
                       // bit 5 step with soft rotation (wool)
                       // bits 3:0 index of text for display
  uint16_t mask;       // mask for PORTA (LSB) and PORTC (MSB)
} step;

#define pEND    0x80                // End of program
#define pHARD   0x40                // Strong rotation
#define pNORM   0x20                // Normal rotation
#define pWOOL   0x10                // Soft rotation for Wool
#define pTURN   (pHARD|pNORM|pWOOL) // Combine mask for rotation
#define pTEXT   0x0F                // Mask for text id


// Definition of Texts to display during Washing
// ---------------------------------------------

const char wtSTART[]  PROGMEM = "Debut     ";
const char wtPRE[]    PROGMEM = "Prelavage ";
const char wtWASH[]   PROGMEM = "Lavage    ";
const char wtDRAIN[]  PROGMEM = "Vidange   ";
const char wtSPIN[]   PROGMEM = "Essorage  ";
const char wtRINSE[]  PROGMEM = "Rincage   ";
const char wtFINISH[] PROGMEM = "Fin       ";
const char wtPAUSE[]  PROGMEM = "Pause     ";

const char* WashText[] PROGMEM =
{
  wtSTART , // 0
  wtPRE   , // 1
  wtWASH  , // 2
  wtDRAIN , // 3
  wtSPIN  , // 4
  wtRINSE , // 5
  wtFINISH, // 6
  wtPAUSE   // 7
};
#define wSTART   0
#define wPRE     1
#define wWASH    2
#define wDRAIN   3
#define wSPIN    4
#define wRINSE   5
#define wFINISH  6
#define wPAUSE   7

// Definition of Washing Programs
// ------------------------------
const char Text_Long[] PROGMEM = "Programme Long  ";
step Prog_Long[] PROGMEM =
{
  // Duration    txt      rot/end  mask
  { seconds( 3), wSTART          , LOCK },                          //  Start
  { seconds( 2), wPRE    | pNORM , LOCK|LEV1|EVCOLD },              //  Prewash  Cold Fill
  { seconds(10), wPRE    | pNORM , LOCK|LEV2|EVCOLD|EVHOT|HEAT },   //           Hot wash
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 1), wDRAIN          , LOCK|DRAIN },                    //           Drain
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 2), wWASH   | pNORM , LOCK|LEV1|EVCOLD },              //  Wash  Cold Fill
  { seconds(25), wWASH   | pNORM , LOCK|LEV2|EVCOLD|EVHOT|HEAT },   //           Hot wash
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 1), wDRAIN          , LOCK|DRAIN },                    //           Drain
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 2), wRINSE          , LOCK|LEV1|EVCOLD },              //  Rinse    Cold fill
  { seconds( 2), wRINSE          , LOCK|DRAIN },                    //           Drain
  { seconds( 2), wRINSE          , LOCK|LEV1|EVCOLD },              //           Cold fill
  { seconds( 2), wRINSE          , LOCK|DRAIN },                    //           Drain
  { seconds( 2), wRINSE          , LOCK|LEV1|EVCOLD },              //           Cold fill
  { seconds( 2), wRINSE          , LOCK|DRAIN },                    //           Drain
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 4), wSPIN           , LOCK|MOTOR|SPIN|DRAIN },         //  Spin     Direct
  { seconds(15), wPAUSE          , LOCK|R15 },                      //           Pause
  { seconds( 4), wSPIN           , LOCK|MOTOR|REV|SPIN|DRAIN },     //           Reveres
  { seconds(15), wPAUSE          , LOCK|R15 },                      //  Pause
  { seconds( 0), wFINISH |  pEND , 0 }                              //  End of Program
};

const char Text_Court[] PROGMEM = "Programme Court ";
step Prog_Court[] PROGMEM =
{
  // Duration    txt       rot/end mask
  { seconds( 3), wSTART          , LOCK },                          //  Start
  { seconds( 2), wPRE    | pWOOL , LOCK|LEV1|EVCOLD },              //  Prewash  Cold Fill
  { seconds(10), wPRE    | pWOOL , LOCK|LEV2|EVCOLD|EVHOT|HEAT },   //           Hot wash
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 1), wDRAIN          , LOCK|DRAIN },                    //           Drain
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 2), wWASH   | pWOOL , LOCK|LEV1|EVCOLD },              //  Wash  Cold Fill
  { seconds(25), wWASH   | pWOOL , LOCK|LEV2|EVCOLD|EVHOT|HEAT },   //           Hot wash
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 1), wDRAIN          , LOCK|DRAIN },                    //           Drain
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 2), wRINSE          , LOCK|LEV1|EVCOLD },              //  Rinse    Cold fill
  { seconds( 2), wRINSE          , LOCK|DRAIN },                    //           Drain
  { seconds( 2), wRINSE          , LOCK|LEV1|EVCOLD },              //           Cold fill
  { seconds( 2), wRINSE          , LOCK|DRAIN },                    //           Drain
  { seconds( 2), wRINSE          , LOCK|LEV1|EVCOLD },              //           Cold fill
  { seconds( 2), wRINSE          , LOCK|DRAIN },                    //           Drain
  { seconds( 4), wPAUSE          , LOCK },                          //  Pause
  { seconds( 4), wSPIN           , LOCK|MOTOR|SPIN|DRAIN },         //  Spin     Direct
  { seconds(15), wPAUSE          , LOCK|R15 },                      //           Pause
  { seconds( 4), wSPIN           , LOCK|MOTOR|REV|SPIN|DRAIN },     //           Reveres
  { seconds(15), wPAUSE          , LOCK|R15 },                      //  Pause
  { seconds( 0), wFINISH |  pEND , 0 }                              //  End of Program
};

const char Text_Vidange[] PROGMEM = "Vidange         ";
step Prog_Vidange[] PROGMEM = 
{
  // Duration    txt       rot/end mask
  { seconds( 3), wSTART          , LOCK },          //  Start
  { seconds(10), wDRAIN          , LOCK|DRAIN },    //  Drain
  { seconds(15), wPAUSE          , LOCK|R15 },      //  Pause
  { seconds( 0), wFINISH  | pEND , 0    }           //  End of Program
};

#define PROGRAM_COUNT 3
const char* ProgText[3] PROGMEM = { Text_Long, Text_Court, Text_Vidange };
      step* Programs[3] PROGMEM = { Prog_Long, Prog_Court, Prog_Vidange };
