INTERFACE zif_calculator
  PUBLIC .

  METHODS add
    IMPORTING
      iv_value1 TYPE i
      iv_value2 TYPE i .

  METHODS substract
    IMPORTING
      iv_value1 TYPE i
      iv_value2 TYPE i .

  METHODS is_zero
    IMPORTING
      iv_value       TYPE i
    RETURNING
      VALUE(rv_bool) TYPE boole_d .

  METHODS get_result
    RETURNING
      VALUE(rv_result) TYPE i .

  METHODS is_ready .

ENDINTERFACE.
