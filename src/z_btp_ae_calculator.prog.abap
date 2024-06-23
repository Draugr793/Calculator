*&---------------------------------------------------------------------*
*& Report Z_BTP_AE_CALCULATOR
*&---------------------------------------------------------------------*
*& This is a report!
*&---------------------------------------------------------------------*
REPORT z_btp_ae_calculator.

DATA: gv_value1  TYPE i,
      gv_value2  TYPE i,
      gv_message TYPE string,
      "gv_message2 TYPE string,
      go_calc    TYPE REF TO zif_calculator.


CREATE OBJECT go_calc TYPE zcl_calculator.


MOVE 2 TO gv_value1.
MOVE 3 TO gv_value2.
