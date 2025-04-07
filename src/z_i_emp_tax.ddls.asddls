@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Calculate tax and PF on Salary'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_EMP_TAX
  as select from Z_TF_EMPLOYEE_WAGES
  //composition of target_data_source_name as _association_name
{
  key  empid     as EmployeeID,
       empname   as EmployeeName,
       empsalary as EmployeeSalary,
       empdept   as EmployeeDept,
       emppf     as EmployeePF,
       emptax    as EmployeeTax
       //   _association_name // Make association public
}
