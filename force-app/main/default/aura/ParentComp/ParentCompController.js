({
	handleEvent : function(component, event, helper) {
        
        alert('I am from the parent');
        var txt = event.getParams('myText');
        alert(txt +'jd');
		
	}
})