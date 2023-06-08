/PROG  FCALMOVE2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 952;
CREATE		= DATE 23-05-30  TIME 14:19:42;
MODIFIED	= DATE 23-05-30  TIME 14:47:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 1292;
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
   3:  //IF (R[40]=2) THEN ;
   4:  //PR[R[36],3]=R[24]*2    ;
   5:  //ENDIF ;
   6:  IF (R[40]=4) THEN ;
   7:  PR[R[36],3]=R[24]*3    ;
   8:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
   9:  ENDIF ;
  10:  IF (R[40]=6) THEN ;
  11:  PR[R[36],3]=R[24]*5    ;
  12:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  13:  ENDIF ;
  14:  IF (R[40]=8) THEN ;
  15:  PR[R[36],3]=R[24]*7    ;
  16:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  17:  ENDIF ;
  18:  IF (R[40]=10) THEN ;
  19:  PR[R[36],3]=R[24]*9    ;
  20:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  21:  ENDIF ;
  22:  IF (R[40]=12) THEN ;
  23:  PR[R[36],3]=R[24]*11    ;
  24:  PR[R[36],3]=PR[R[36],3]+R[41]    ;
  25:  ENDIF ;
  26:   ;
  27:  IF (PR[R[36],3]+PR[7,3]>750) THEN ;
  28:  PR[6,3]=PR[R[36],3]+PR[7,3]-PR[2,3]    ;
  29:  PR[31,3]=PR[R[36],3]+PR[7,3]    ;
  30:  ELSE ;
  31:  PR[31,3]=PR[6,3]+PR[2,3]    ;
  32:  ENDIF ;
  33:   ;
  34:  IF (R[36]=25 OR R[36]=26) THEN ;
  35:  PR[30,3]=R[32]    ;
  36:  ELSE ;
  37:  PR[30,3]=R[33]    ;
  38:  ENDIF ;
  39:   ;
  40:  R[7]=6    ;
/POS
/END
