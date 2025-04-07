CLASS zcl_emp_salary DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    CLASS-METHODS : calc_tax FOR TABLE FUNCTION z_tf_employee_wages.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EMP_SALARY IMPLEMENTATION.


  METHOD calc_tax BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT
                     OPTIONS READ-ONLY USING ztm_emp_tab.


et_calc_tax = select client,
                   empid,
                   empname,
                   empsalary,
                   empdept,
                   ( empsalary * 0.12 ) as emppf,
                   CASE
                   WHEN empsalary <= 400000 then  0
                   WHEN empsalary > 400000 and empsalary <= 800000 then ( 0.05 * empsalary )
                   WHEN empsalary > 800000 and empsalary <= 1200000 then ( 0.1 * empsalary )
                   WHEN empsalary > 1200000 and empsalary <= 1600000 then ( 0.15 * empsalary )
                   WHEN empsalary > 1600000 and empsalary <= 2000000 then ( 0.2 * empsalary )
                   end as emptax from ztm_emp_tab ;



    RETURN  :et_calc_tax ;



  endmethod.
ENDCLASS.
