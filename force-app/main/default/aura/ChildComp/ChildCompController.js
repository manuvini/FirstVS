({
	fireEvent : function(component, event, helper) {
        
        alert('I am from child componnet');

		var e = component.getEvent('myEvent');
        console.log(e);
        e.setParams({
            'myText': 'This is last class for aura'
        });
        e.fire();

		
	}
})