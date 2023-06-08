/PROG  FCALMOVE1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1060;
CREATE		= DATE 23-05-30  TIME 14:25:18;
MODIFIED	= DATE 23-05-30  TIME 14:45:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1384;
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
   3:  !SelectCalHighDropBag ;
   4:  //IF (R[40]=1) THEN ;
   5:  //PR[R[36],3]=R[24]+R[41]    ;
   6:  //ENDIF ;
   7:  IF (R[40]=3) THEN ;
   8:  PR[R[36],3]=R[24]*2    ;
   9:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  10:  ENDIF ;
  11:  IF (R[40]=5) THEN ;
  12:  PR[R[36],3]=R[24]*4    ;
  13:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  14:  ENDIF ;
  15:  IF (R[40]=7) THEN ;
  16:  PR[R[36],3]=R[24]*6    ;
  17:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  18:  ENDIF ;
  19:  IF (R[40]=9) THEN ;
  20:  PR[R[36],3]=R[24]*8    ;
  21:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  22:  ENDIF ;
  23:  IF (R[40]=11) THEN ;
  24:  PR[R[36],3]=R[24]*10    ;
  25:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  26:  ENDIF ;
  27:  !EndCalHighDrop ;
  28:   ;
  29:  !SelectCalPosEsc ;
  30:  IF (PR[R[36],3]+PR[7,3]>750) THEN ;
  31:  PR[6,3]=PR[R[36],3]+PR[7,3]-PR[2,3]    ;
  32:  PR[31,3]=PR[R[36],3]+PR[7,3]    ;
  33:  ELSE ;
  34:  PR[31,3]=PR[6,3]+PR[2,3]    ;
  35:  ENDIF ;
  36:  !EndSelectCalPosEsc ;
  37:   ;
  38:  IF (R[36]=17 OR R[36]=18) THEN ;
  39:  PR[30,3]=R[32]    ;
  40:  ELSE ;
  41:  PR[30,3]=R[33]    ;
  42:  ENDIF ;
  43:   ;
  44:  R[7]=5    ;
/POS
/END
