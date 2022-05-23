* Beispiel für Verwendung von Zeigern (field symbols)  
REPORT  ZDEMO_A02_FIRSTREPORT_02.

TYPES: BEGIN OF ty_matdata,
   matnr type c LENGTH 15,
   mattext type c LENGTH 30,
   matunit type c LENGTH 3,
  END OF ty_matdata.

DATA ls_matdata TYPE zmy_matdata. 
DATA lt_matdata TYPE TABLE OF zymy_matdata.

FIELD-SYMBOLS <fs_matdata> TYPE any. 

DO 5 TIMES.
  ls_matdata-matnr = sy-index.

  " if-Anweisung 
  if ls_matdata-matnr = '1'. 
    ls_matdata-mattext = 'Material 1'.
  elseif ls_matdata-matnr = '2'.
    ls_matdata-mattext = 'Material 2'.
  else.
    CONCATENATE 'My testmaterial' ls_matdata-matnr INTO ls_matdata-mattext.
  endif.

  ls_matdata-matunit = 'ST'.
  APPEND ls_matdata TO lt_matdata.
ENDDO.

LOOP AT lt_matdata ASSIGNING <fs_matdata>.
  WRITE / <fs_matdata>.
ENDLOOP.