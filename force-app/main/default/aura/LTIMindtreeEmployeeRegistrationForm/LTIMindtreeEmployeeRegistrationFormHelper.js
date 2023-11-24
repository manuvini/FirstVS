({
	helperMethod : function(component,event) {
        
        
        
        let name = component.get('v.empName');
        let Fathername = component.get('v.empFatherName');
        let Address = component.get('v.empAddress');
        let Dept = component.get('v.empDept');
        let Salary = component.get('v.empSalary');
        
        
        let action = component.get('c.handleNewEmp');
        
        action.setParams({
            'eName' : name,
            'eFatherName' : Fathername,
            'eAdd' : Address,
            'eDept' : Dept,
            'eSalary': Salary
            
        });
    	 action.setCallback(this, function(response){
            var state = response.getState();
            if(state == 'SUCCESS') {
                alert("sucess");
				component.set('v.empName',"");
				component.set('v.empFatherName',"");
				component.set('v.empAddress',"");
				component.set('v.empDept',"");
				component.set('v.empSalary',"");
            }
        });
        
		$A.enqueueAction(action);


	

        


		
	}
})