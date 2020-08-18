interface ZIF_CALCULATOR
  public .


  methods ADD
    importing
      !IV_VALUE1 type I
      !IV_VALUE2 type I .
  methods SUBSTRACT
    importing
      !IV_VALUE1 type I
      !IV_VALUE2 type I .
  methods IS_ZERO
    importing
      !IV_VALUE type I
    returning
      value(RV_BOOL) type BOOLE_D .
  methods GET_RESULT
    returning
      value(RV_RESULT) type I .
  methods IS_READY .
endinterface.
