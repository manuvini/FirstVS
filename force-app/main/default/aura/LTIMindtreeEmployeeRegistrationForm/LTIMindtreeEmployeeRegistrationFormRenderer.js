({
    
    render : function(component, helper){
        var ret = this.superRender();
        alert('I am from render');
        return ret;
    },
    afterRender: function(component,helper){
		this.superAfterRender();
		alert('I am from afterrRender');
    },
    rerender : function(component,helper){
        this.superRerender();
        alert('I am from rerender');
    },
    unrender: function(){
        this.superUnrender();
        alert('I am from unrerender - going to destroy');
    }
})