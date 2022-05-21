REPORT  ZDEMO_A01_FIRSTREPORT_03.

* Deklaration einer Struktur  ty_ ... type
TYPES: BEGIN OF ty_matdata,
   matnr type c LENGTH 15,
   mattext type c LENGTH 30,
   matunit type c LENGTH 3,
  END OF ty_matdata.

data lv_text type string.        " l .. local, v .. variable
data ls_matdata type ty_matdata. " l .. local, s .. structure

lv_text = 'Hello world.'.

ls_matdata-matnr = '1'.
ls_matdata-mattext = 'My testmaterial 1'.
ls_matdata-matunit = 'ST'.

write lv_text.

NEW-LINE.

write ls_matdata.    

