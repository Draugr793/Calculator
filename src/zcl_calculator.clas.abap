CLASS zcl_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_calculator.


  PROTECTED SECTION.
private section.

  data MV_RESULT type I .

  methods LOG_INFORMATION .
  methods CLEAR_ALL .
ENDCLASS.



CLASS ZCL_CALCULATOR IMPLEMENTATION.


  METHOD clear_all.

    CLEAR me->mv_result.

  ENDMETHOD.


  METHOD log_information.

    DATA: BEGIN OF ls_message,
            text1 TYPE string,
            text2 TYPE string,
          END OF ls_message.


    ls_message-text1  = |Berechnung vom: { sy-datum }|.
    ls_message-text2 = |Ergebnis: { mv_result }|.

  ENDMETHOD.


  METHOD zif_calculator~add.
    MOVE iv_value1 TO mv_result.
    ADD iv_value2 TO mv_result.
  ENDMETHOD.


  METHOD zif_calculator~get_result.
    rv_result = mv_result.
  ENDMETHOD.


  METHOD zif_calculator~is_zero.
    IF iv_value = 0.
      rv_bool = abap_true.
    ELSE.
      rv_bool = abap_false.
    ENDIF.
  ENDMETHOD.


  METHOD zif_calculator~substract.
    MOVE iv_value1 TO mv_result.
    SUBTRACT iv_value2 FROM mv_result.
  ENDMETHOD.
ENDCLASS.
