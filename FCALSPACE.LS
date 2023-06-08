/PROG  FCALSPACE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 746;
CREATE		= DATE 23-05-30  TIME 09:39:40;
MODIFIED	= DATE 23-05-31  TIME 09:33:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1106;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:   ;
   2:  R[7]=0    ;
   3:  R[85]=0    ;
   4:  !10 Kg ;
   5:  IF (R[26]=1) THEN ;
   6:  IF (R[22]*5>1800) OR (R[23]*3>1800) THEN ;
   7:  DO[24]=PULSE,1.0sec ;
   8:  MESSAGE[Bag size out of range] ;
   9:  R[85]=1    ;
  10:  ELSE ;
  11:  R[85]=0    ;
  12:  DO[24]=OFF ;
  13:  ENDIF ;
  14:  ENDIF ;
  15:  !30 Kg ;
  16:  IF (R[26]=2) THEN ;
  17:  IF (R[22]*4>2000) OR (R[23]*2>2000) THEN ;
  18:  DO[24]=PULSE,1.0sec ;
  19:  MESSAGE[Bag size out of range] ;
  20:  R[85]=1    ;
  21:  ELSE ;
  22:  R[85]=0    ;
  23:  DO[24]=OFF ;
  24:  ENDIF ;
  25:  ENDIF ;
  26:   ;
  27:  IF (R[27]>12) THEN ;
  28:  MESSAGE[SettingMaxLayer] ;
  29:  MESSAGE[> 12] ;
  30:  R[85]=1    ;
  31:  ELSE ;
  32:  R[85]=0    ;
  33:  ENDIF ;
  34:   ;
  35:  R[7]=2    ;
/POS
/END
