public class EmpForm {
    
    @auraEnabled
    public static void handleNewEmp(String eName,String eFatherName, String eAdd, String eDept, String eSalary){
        Employee__c emp = new Employee__c();

		emp.Name = eName;
		emp.Employee_Father_Name__c = eFatherName;
		emp.Employee_Address__c = eAdd;
		emp.Employee_Department__c = eDept;
		emp.Employee_Salary__c = Integer.valueOf(eSalary);
        
        insert emp;

    }

}