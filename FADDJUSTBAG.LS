/PROG  FADDJUSTBAG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 886;
CREATE		= DATE 23-05-30  TIME 10:10:22;
MODIFIED	= DATE 23-05-31  TIME 09:13:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 39;
MEMORY_SIZE	= 1230;
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
   3:  !Haft BagWidth ;
   4:  R[34]=R[22]/2    ;
   5:  !Haft Baglength ;
   6:  R[35]=R[23]/2    ;
   7:   ;
   8:  !CalOffsetBeforDrop ;
   9:  PR[3,3]=R[24]*1.5    ;
  10:  !CalOffsetAfterDrop ;
  11:  PR[7,3]=R[24]*1.5    ;
  12:   ;
  13:  !CalAddJust Length ;
  14:  IF (R[23]>=851) THEN ;
  15:  MESSAGE[Length > 850 mm] ;
  16:  R[3]=R[23]*2    ;
  17:  R[3]=1700-R[3]    ;
  18:  R[3]=R[3]/2    ;
  19:  ELSE ;
  20:  MESSAGE[850 mm] ;
  21:  R[23]=850    ;
  22:  R[3]=0    ;
  23:  ENDIF ;
  24:  !End CalAddJust Length ;
  25:   ;
  26:  !CalAddJust Width ;
  27:  IF (R[22]>=426) THEN ;
  28:  MESSAGE[Width > 425 mm] ;
  29:  R[5]=R[22]*4    ;
  30:  R[5]=1700-R[5]    ;
  31:  R[5]=R[5]/2    ;
  32:  ELSE ;
  33:  MESSAGE[425 mm] ;
  34:  R[22]=425    ;
  35:  R[5]=0    ;
  36:  ENDIF ;
  37:  !End CalAddJust Width ;
  38:   ;
  39:  R[7]=4    ;
/POS
/END
