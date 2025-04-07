@EndUserText.label: 'Calculate Salary Using Table Function'
define table function Z_TF_EMPLOYEE_WAGES
//with parameters parameter_name : parameter_type
returns {
  client : abap.clnt;
  empid : sysuuid_x16;
  empname : zename_dt;
  empsalary : zesalary_dt;
  empdept : zedept_dt;
  emppf : zepf_dt;
  emptax : zetax_dt;
  
}
implemented by method zcl_emp_salary=>calc_tax;