/PROG  FCALPALLTE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 998;
CREATE		= DATE 23-05-30  TIME 10:02:44;
MODIFIED	= DATE 23-05-30  TIME 11:24:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1314;
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
   3:  IF (DI[2]=ON) THEN ;
   4:  !Set LevelPallet 1-4 Left ;
   5:  MESSAGE[Start L1 (Left)] ;
   6:  IF (R[20]=1) THEN ;
   7:  MESSAGE[1 Pallet L1] ;
   8:  R[41]=R[74]    ;
   9:  ENDIF ;
  10:  IF (R[20]=2) THEN ;
  11:  MESSAGE[2 Pallet L1] ;
  12:  R[41]=R[75]    ;
  13:  ENDIF ;
  14:  IF (R[20]=3) THEN ;
  15:  MESSAGE[3 Pallet L1] ;
  16:  R[41]=R[76]    ;
  17:  ENDIF ;
  18:  IF (R[20]=4) THEN ;
  19:  MESSAGE[4 Pallet L1] ;
  20:  R[41]=R[77]    ;
  21:  ENDIF ;
  22:  !End SetLevelPallet ;
  23:  ENDIF ;
  24:   ;
  25:  IF (DI[3]=ON) THEN ;
  26:  !Set LevelPallet 1-4 Right ;
  27:  MESSAGE[Start L2 (Right)] ;
  28:  IF (R[21]=1) THEN ;
  29:  MESSAGE[1 Pallet L2] ;
  30:  R[41]=R[78]    ;
  31:  ENDIF ;
  32:  IF (R[21]=2) THEN ;
  33:  MESSAGE[2 Pallet L2] ;
  34:  R[41]=R[79]    ;
  35:  ENDIF ;
  36:  IF (R[21]=3) THEN ;
  37:  MESSAGE[3 Pallet L2] ;
  38:  R[41]=R[80]    ;
  39:  ENDIF ;
  40:  IF (R[21]=4) THEN ;
  41:  MESSAGE[4 Pallet L2] ;
  42:  R[41]=R[81]    ;
  43:  ENDIF ;
  44:  !End SetLevelPallet ;
  45:  ENDIF ;
  46:  R[7]=3    ;
/POS
/END
