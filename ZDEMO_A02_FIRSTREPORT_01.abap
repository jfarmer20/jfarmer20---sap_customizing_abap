* Beispiel einer if- und case-Anweisung
REPORT  ZDEMO_A02_FIRSTREPORT_01.

TYPES: BEGIN OF ty_matdata,
   matnr type c LENGTH 15,
   mattext type c LENGTH 30,
   matunit type c LENGTH 3,
  END OF ty_matdata.

DATA ls_matdata TYPE ty_matdata. 
DATA lt_matdata TYPE ty_matdata.

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

  " case-Anweisung 
  CASE ls_matdata-matnr. 
    WHEN '1'.
      ls_matdata-mattext = 'Material 1'.
    WHEN '2'.
      ls_matdata-mattext = 'Material 2'.
    WHEN OTHERS.
      CONCATENATE 'My testmaterial' ls_matdata-matnr INTO ls_matdata-mattext.
  ENDCASE.  

  ls_matdata-matunit = 'ST'.
  APPEND ls_matdata TO lt_matdata.
ENDDO.

LOOP AT lt_matdata INTO ls_matdata.
  WRITE / ls_matdata.
ENDLOOP.