REPORT  ZDEMO_A01_FIRSTREPORT_04.

TYPES: BEGIN OF ty_matdata,
   matnr type c LENGTH 15,
   mattext type c LENGTH 30,
   matunit type c LENGTH 3,
  END OF ty_matdata.

data lv_text type string.        " l .. local, v .. variable
data ls_matdata type ty_matdata. " l .. local, s .. structure
* lokale Tabelle deklarieren  
data lt_matdata type TABLE OF ty_matdata. 

lv_text = 'Hello world.'. 

ls_matdata-matnr = '1'.
ls_matdata-mattext = 'My testmaterial 1'.
ls_matdata-matunit = 'ST'.

write lv_text.

NEW-LINE.

write ls_matdata.

* Tabelle füllen  
do 5 times.
  ls_matdata-matnr = sy-index.  " sy-index ... Systemvariable, enthält Laufvariable
  CONCATENATE 'My testmaterial' ls_matdata-matnr into ls_matdata-mattext.
  ls_matdata-matunit = 'ST'.
  append ls_matdata to lt_matdata.
enddo.  

* Tabelle ausgeben  
LOOP at lt_matdata into ls_matdata. 
  write / ls_matdata. " / ... Zeilenumbruch   
ENDLOOP.    