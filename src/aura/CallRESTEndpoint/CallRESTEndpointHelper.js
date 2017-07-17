({
    getZipData : function(component) {
        this.getData(component, "c.callSimpleRest");
    },
    
    getData : function(component, methodName) {
        var action = component.get(methodName);
        
        action.setParams({
            "Url": component.get("v.sourceUrl")
        });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var records = response.getReturnValue();
                
                var disCols = [];
                records.forEach(function(record) {
                    var localDisCols = this.createConfig(record);
                    disCols = disCols.concat(localDisCols);
                }, this);
                
                var data = {
                    columns: disCols,
                    rows: records
                };
                component.set("v.data", data);                
                
                component.set("v.hasData", true);
            //} else if (state === "IMCOMPLETE") {
                
            } else { // state === "ERROR"
                //console.log(response.getError());
                $A.log(response.getError());
            }
        });
        $A.enqueueAction(action);
    },
    
    createConfig: function (record) {
        var disCols = [];
        Object.keys(record).forEach(function(key) {
            if (Array.isArray(record[key])) {
                // only review the first entry
                var localDisCols = this.createConfig(record[key][0]);
                disCols.push({
                    "sortable":false,
                    "label":key,
                    "dataType":"ARRAY",
                    "name":key,
                    "arrayData":localDisCols
                });
            } else if (typeof record[key] === 'object' && !Array.isArray(record[key])) {
                
            } else {
                disCols.push({
                    "sortable":true,
                    "label":key,
                    "dataType":"STRING",
                    "name":key
                });
            }
        }, this);
        return disCols;
    }
})