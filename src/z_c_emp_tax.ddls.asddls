@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Salary'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_EMP_TAX as projection on Z_I_EMP_TAX
{
    key EmployeeID,
    EmployeeName,
    EmployeeSalary,
           @Consumption.valueHelpDefinition: [{ entity:{ name:'Z_I_DEPT_11563', element : 'Value' } }]
    EmployeeDept,
    EmployeePF,
    EmployeeTax
}
