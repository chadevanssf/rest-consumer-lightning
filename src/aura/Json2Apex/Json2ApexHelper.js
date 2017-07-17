({
    getData : function(component, methodName, url) {
        var action = component.get("c." + methodName);
        
        action.setParams({
            "Url": url
        });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var records = response.getReturnValue();
                
                var disCols = [];
                if (records && records.length > 0) {
                    var record = records[0];
                    var localDisCols = this.createConfig(record);
                    disCols = disCols.concat(localDisCols);
                }
                /*records.forEach(function(record) {
                    var localDisCols = this.createConfig(record);
                    disCols = disCols.concat(localDisCols);
                }, this);*/
                
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
                var arrDisCols = this.createConfig(record[key][0]);
                disCols.push({
                    "sortable":false,
                    "label":key,
                    "dataType":"ARRAY",
                    "name":key,
                    "arrayData":arrDisCols
                });
            } else if (typeof record[key] === 'object' && !Array.isArray(record[key])) {
                var objDisCols = this.createConfig(record[key]);
                disCols.push({
                    "sortable":false,
                    "label":key,
                    "dataType":"OBJECT",
                    "name":key,
                    "arrayData":objDisCols
                });
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