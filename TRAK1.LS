/PROG  TRAK1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 978;
CREATE		= DATE 22-10-07  TIME 06:25:52;
MODIFIED	= DATE 22-10-08  TIME 10:26:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1286;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  IF (DI[8]=ON AND R[9]=0) THEN ;
   2:  !MoveGiToRegister(Chk) ;
   3:  R[22]=GI[3]    ;
   4:  R[23]=GI[4]    ;
   5:  R[24]=GI[5]    ;
   6:  R[25]=GI[6]    ;
   7:  R[26]=GI[7]    ;
   8:  R[27]=GI[8]    ;
   9:  R[28]=GI[9]    ;
  10:  R[29]=GI[10]    ;
  11:  R[30]=GI[11]    ;
  12:  R[31]=GI[12]    ;
  13:  !MoveRecheck ;
  14:  GO[3]=(GI[3]) ;
  15:  GO[4]=(GI[4]) ;
  16:  GO[5]=(GI[5]) ;
  17:  GO[6]=(GI[6]) ;
  18:  GO[7]=(GI[7]) ;
  19:  GO[8]=(GI[8]) ;
  20:  GO[9]=(GI[9]) ;
  21:  GO[10]=(GI[10]) ;
  22:  GO[11]=(GI[11]) ;
  23:  GO[12]=(GI[12]) ;
  24:   ;
  25:  R[9]=1    ;
  26:  DO[8]=ON ;
  27:  ENDIF ;
  28:   ;
  29:  IF (DI[8]=OFF) THEN ;
  30:  R[9]=0    ;
  31:  DO[8]=OFF ;
  32:  ENDIF ;
  33:   ;
  34:  IF (DI[6]=ON AND GO[9]=1 AND GO[10]=1 AND GO[11]=1 AND GO[12]=1) THEN ;
  35:  R[6]=1    ;
  36:  ENDIF ;
  37:   ;
  38:  IF (DI[7]=ON AND GO[9]=1 AND GO[10]=1 AND GO[11]=1 AND GO[12]=1) THEN ;
  39:  R[6]=1    ;
  40:  ENDIF ;
  41:   ;
  42:  IF (DI[16]=ON) THEN ;
  43:  R[20]=GI[1]    ;
  44:  R[21]=GI[2]    ;
  45:  DO[16]=ON ;
  46:  ELSE ;
  47:  DO[16]=OFF ;
  48:  ENDIF ;
/POS
/END
