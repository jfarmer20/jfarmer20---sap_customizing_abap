* OpenSQL-Beispiel mit WHERE-Klausel
REPORT  ZDEMO_A02_FIRSTREPORT_03.

* Beispiel für die Verwendung von OpenSQL 
DATA ls_matdata TYPE zmy_matdata. 
DATA lt_matdata TYPE TABLE OF zymy_matdata.

FIELD-SYMBOLS <fs_matdata> TYPE zymy_matdata. 

select * from zymy_matdata
  into TABLE lt_matdata 
  where matunit = 'ST'. 

LOOP AT lt_matdata ASSIGNING <fs_matdata>.
  WRITE: / <fs_matdata>-matnr, <fs_matdata>-mattext, <fs_matdata>-matunit.
ENDLOOP.