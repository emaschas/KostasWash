#include "LCD.h"
#include <avr/pgmspace.h>

// LCD Display
//   PD5  LCD_DB7
//   PD6  LCD_DB6
//   PB2  LCD_DB5
//   PB3  LCD_DB4
//   PB0  LCD_RS
//   PD7  LCD_EN

// Affichage LCD
#define   EN _BV(PD7)   // LCD Enable
#define POEN  PORTD
#define DIEN  DDRD

#define   RS _BV(PB0)   // LCD Register select (RS=1)
#define   CM  0         // LCD Commands        (RS=0)
#define PORS  PORTB
#define DIRS  DDRB

#define   D4 _BV(PB3)   // LCD Data D4
#define POD4  PORTB
#define DID4  DDRB

#define   D5 _BV(PB2)   // LCD Data D5
#define POD5  PORTB
#define DID5  DDRB

#define   D6 _BV(PD6)   // LCD Data D6
#define POD6  PORTD
#define DID6  DDRD

#define   D7 _BV(PD5)   // LCD Data D7
#define POD7  PORTD
#define DID7  DDRD

static uint8_t LCD_col = 0;
static uint8_t LCD_row = 0;

static uint8_t LCD_col_save = 0;
static uint8_t LCD_row_save = 0;

static uint8_t newlineWaiting = 0;

void   LCD_4bits( uint8_t data, uint8_t shift )
{  
  PORS &= ~RS;
  POEN &= ~EN;
  if( (data & _BV(0)) != 0 ) POD4 |= D4; else POD4 &= ~D4;
  if( (data & _BV(1)) != 0 ) POD5 |= D5; else POD5 &= ~D5;
  if( (data & _BV(2)) != 0 ) POD6 |= D6; else POD6 &= ~D6;
  if( (data & _BV(3)) != 0 ) POD7 |= D7; else POD7 &= ~D7;
  _delay_us(1);
  PORS |= shift;
  POEN |= EN;
  _delay_us(1);
  POEN &= ~EN;
  PORS &= ~RS;
  _delay_us(46);
}

void LCD_Envoi( uint8_t data, uint8_t shift )
{
  uint8_t xh = data >> 4;
  uint8_t xb = data & 0x0F;
  LCD_4bits( xh, shift );
  LCD_4bits( xb, shift );
}

void LCD_move( uint8_t Row, uint8_t Col )
{
  uint8_t Add;
  if( Row > LCDlastRow ) Row = LCDlastRow;
  if( Col > LCDlastCol ) Col = LCDlastCol;
  #ifdef LCDmode1x16
    // For 1x16 display (Row ingored) ref. FDCC1601E
    Add = ( ( Col % 8 ) + 0x40 * ( ( Col / 8 ) % 2 ) );
    //Add = Col;
  #endif
  #if defined(LCDmode4x20) || defined(LCDmode2x16)
    // For 2x16 display spec. 6672 ref. FDCC1602G
    // For 4x20 display            ref. FDCC2004B
    Add = Col;
    switch( Row )
    {
    case 0: 
      Add = Col; 
      break;
    case 1: 
      Add = Col + 0x40; 
      break;
    case 2: 
      Add = Col + 0x14; 
      break;
    case 3: 
      Add = Col + 0x54; 
      break;
    }
  #endif
  LCD_Envoi( 0x80 | Add, CM );
  LCD_col = Col;
  LCD_row = Row;
  newlineWaiting = 0;
}

void LCD_left()
{
  if( LCD_col > 0 ) LCD_col--;
  LCD_move( LCD_row, LCD_col );
}

void LCD_right()
{
  if( LCD_col < LCDlastCol ) LCD_col++;
  else { LCD_return(); LCD_down(); }
  LCD_move( LCD_row, LCD_col );
}

void LCD_up()
{
  if( LCD_row > 0 ) LCD_row--;
  LCD_move( LCD_row, LCD_col );
}

void LCD_down()
{
  LCD_row++;
  if( LCD_row > LCDlastRow ) 
  {
    LCD_row = 0;
    newlineWaiting = !0;
  }
  LCD_move( LCD_row, LCD_col );
}

void LCD_return()
{
  LCD_move( LCD_row, 0 );
}

void LCD_erase() // erase from cursor to end of line
{
  for( uint8_t i=LCD_col; i<LCDlastCol; i++ ) LCD_putc( ' ' );
}

void LCD_putc( uint8_t c )
{
  if( newlineWaiting ) LCD_cls();
  if( c=='\n' )
  {
    LCD_return();
    LCD_down();
  }
    else
  {  
    LCD_Envoi( c, RS );
    LCD_col++;
    if( LCD_col > LCDlastCol ) 
    {
      LCD_return();
      LCD_down();
    }
    #ifdef LCDmode1x16
      if( LCD_col == 8 ) LCD_move(0, LCD_col);
    #endif
  }
}

void LCD_puts( char *s )
{
  for( char* p=s; *p; p++ ) LCD_putc( *p );
}

void LCD_puts_P( const char *s )
{
  while(pgm_read_byte(s) != 0) LCD_putc( pgm_read_byte(s++) );
}

void LCD_cls()
{
  LCD_Envoi( 0x01, CM );
  _delay_us( 1640 );
  LCD_col = 0;
  LCD_row = 0;
  newlineWaiting = 0;
}

void LCD_begin()
{
  // EN output
  DIEN |=  EN;
  POEN &= ~EN;
  // RS output
  DIRS |=  RS;
  PORS &= ~RS;
  //   D4 to D7: output to LCD
  DID4 |= D4;
  DID5 |= D5;
  DID6 |= D6;
  DID7 |= D7;
  //  Start LCD
  _delay_ms(15);
  LCD_4bits( 0x3, CM ); // Retour en mode 8 bit
  _delay_us( 100 );
  LCD_4bits( 0x3, CM ); // 2 fois
  _delay_us( 100 );
  LCD_4bits( 0x3, CM ); // 3 fois pour etre sur ! 
  _delay_us( 100 );
  LCD_4bits( 0x2, CM ); // mode 4 bit
  LCD_Envoi( 0x0C, CM );  // 0x8 + display on + cursor off + blink off
  LCD_cls();
}

void LCD_home()
{
  LCD_Envoi( 0x03, CM );
  _delay_us(1640);
  LCD_col = 0;
  LCD_row = 0;
}

void LCD_cursor( uint8_t CurOn, uint8_t CurBlink )
{
  uint8_t Code = 0x0C;
  if( CurOn    ) Code |= 0x02;
  if( CurBlink ) Code |= 0x01;
  LCD_Envoi( Code , CM );
}

void LCD_specialCar()
{
  LCD_Envoi( 0x40, CM );
  // Char 0
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b01110, RS );
  LCD_Envoi( 0b10001, RS );
  LCD_Envoi( 0b10001, RS );
  LCD_Envoi( 0b10001, RS );
  LCD_Envoi( 0b01110, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  // Char 1
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b01110, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b01110, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  // Char 2
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00001, RS );
  LCD_Envoi( 0b00001, RS );
  LCD_Envoi( 0b00001, RS );
  LCD_Envoi( 0b00001, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  // Char 3
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  // Char 4
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b11111, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  // Char 5
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b10000, RS );
  LCD_Envoi( 0b10000, RS );
  LCD_Envoi( 0b10000, RS );
  LCD_Envoi( 0b10000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_Envoi( 0b00000, RS );
  LCD_move(0,0);
}

void LCD_save(void)
{
	LCD_col_save = LCD_col;
	LCD_row_save = LCD_row;
}             

void LCD_recall(void)
{
  LCD_move( LCD_row_save, LCD_col_save );
}
