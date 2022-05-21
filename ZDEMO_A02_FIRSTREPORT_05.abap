* OpenSQL-Beispiel mit Selektions-Screen (Benutzereingabe)
REPORT  ZDEMO_A02_FIRSTREPORT_03.

DATA ls_matdata TYPE zmy_matdata. 
DATA lt_matdata TYPE TABLE OF zymy_matdata.

FIELD-SYMBOLS <fs_matdata> TYPE zymy_matdata. 

SELECTION-SCREEN begin of block b1.
  PARAMETER p_unit like ls_matdata-matunit.
SELECTION-SCREEN end of block b1.

select * from zymy_matdata
  into TABLE lt_matdata 
  where matunit = p_unit. 

LOOP AT lt_matdata ASSIGNING <fs_matdata>.
  WRITE: / <fs_matdata>-matnr, <fs_matdata>-mattext, <fs_matdata>-matunit.
ENDLOOP.