*&---------------------------------------------------------------------*
*& Report  ZDEMO_A01_FIRSTREPORT_LEHRER
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  ZDEMO_A01_FIRSTREPORT_02.

data lv_text type string.  

lv_text = 'Hello world'.  

* auch möglich, beinhaltet eine Typumwandlung:  
" move 'Hello world' to lv_text.

write lv_text.  
