({
    changeInputs : function(component, event, helper) {
        var params = event.getParam('arguments');
        if (params) {
            var newMethod = params.method;
            var newUrl = params.url;
            
            component.set("v.methodName", newMethod);
            component.set("v.restUrl", newUrl);
            
            helper.getData(component, newMethod, newUrl);
        }
    }
})