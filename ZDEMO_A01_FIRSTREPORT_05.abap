REPORT  ZDEMO_A01_FIRSTREPORT_05.

* Jetzt verwenden wir die definierten Datentypen aus dem ABAP Dictionary 
DATA ls_matdata TYPE zmy_matdata. 
DATA lt_matdata TYPE zmy_matdata_tt.

DO 5 TIMES.
  ls_matdata-matnr = sy-index.
  CONCATENATE 'My testmaterial' ls_matdata-matnr INTO ls_matdata-mattext.
  ls_matdata-matunit = 'ST'.
  APPEND ls_matdata TO lt_matdata.
ENDDO.

LOOP AT lt_matdata INTO ls_matdata.
  WRITE / ls_matdata.
ENDLOOP.