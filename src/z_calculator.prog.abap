*&---------------------------------------------------------------------*
*& Report z_calculator
*&---------------------------------------------------------------------*
*& Test
*&---------------------------------------------------------------------*
REPORT z_calculator.

DATA: gv_value1   TYPE i,
      gv_value2   TYPE i,
      gv_message  TYPE string,
      "gv_message2 TYPE string,
      go_calc     TYPE REF TO zcl_calculator.


CREATE OBJECT go_calc.


MOVE 2 TO gv_value1.
MOVE 3 TO gv_value2.
