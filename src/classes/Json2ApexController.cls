public with sharing class Json2ApexController
{
    @AuraEnabled
    public static List<ZipInfoClass.Results> callZipInfo(String Url)
    {
        // don't forget to add the URL to the remote site settings, or this won't work!
        // 
        // note that this must return a List<> of the correct type
        // 
        // must have @AuraEnabled on each property that you want to expose
        
        String jsonString = getZipJSON(Url);
        //String jsonString = getRestJson(Url);
        
        ZipInfoClass.ZipInfo zi = ZipInfoClass.parse(jsonString);
        
        List<ZipInfoClass.Results> results = new List<ZipInfoClass.Results>();
        results.add(zi.Results);
        
        return results;
    }
    private static String getZipJSON(String Url)
    {
        return '{  "results": {  "zip": "00501",  "cities": [  {  "city": "Holtsville",  "preferred": "P"  },  {  "city": "Internal Revenue Service",  "preferred": "N"  }  ],  "county": "Suffolk",  "state": "NY",  "country": "U",  "area_code": "631",  "fips": "36103",  "time_zone": "EST",  "daylight_savings": "Y",  "latitude": "40.8179",  "longitude": "-73.0453",  "type": "U",  "population": "0"  } }';
    }

    @AuraEnabled
    public static List<SingleObjectClass.SingleObject> singleObject(String Url)
    {
        // handles a single parent
        String jsonString = getSingleObjectJSON(Url);
        
        SingleObjectClass.SingleObject parsed = SingleObjectClass.parse(jsonString);
        
        List<SingleObjectClass.SingleObject> results = new List<SingleObjectClass.SingleObject>();
        results.add(parsed);
        
        return results;
    }
    private static String getSingleObjectJSON(String Url)
    {
        return '{"color":"red","value":"#f00"}';
    }
    
    @AuraEnabled
    public static List<SingleObjectWithArrayClass.SingleObjectWithArray> singleObjectWithArray(String Url)
    {
        // handles a single parent
        String jsonString = getSingleObjectWithArrayJSON(Url);
        
        SingleObjectWithArrayClass.SingleObjectWithArray parsed = SingleObjectWithArrayClass.parse(jsonString);
        
        List<SingleObjectWithArrayClass.SingleObjectWithArray> results = new List<SingleObjectWithArrayClass.SingleObjectWithArray>();
        results.add(parsed);
        
        return results;
    }
    private static String getSingleObjectWithArrayJSON(String Url)
    {
        return '{"color":"red","value":"#f00","items":[{"name":"ball","quantity":"1"}]}';
    }

    @AuraEnabled
    public static List<SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray> singleObjectWithArrayOfArray(String Url)
    {
        // handles a single parent
        String jsonString = getSingleObjectWithArrayOfArrayJSON(Url);
        
        SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray parsed = SingleObjectWithArrayOfArrayClass.parse(jsonString);
        
        List<SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray> results = new List<SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray>();
        results.add(parsed);
        
        return results;
    }
    private static String getSingleObjectWithArrayOfArrayJSON(String Url)
    {
        return '{"color":"red","value":"#f00","items":[{"name":"ball","quantity":"1","types":[{"name":"playground"},{"name":"beach"}]}]}';
    }
    
    @AuraEnabled
    public static List<SingleObjectWithObjectClass.SingleObjectWithObject> singleObjectWithObject(String Url)
    {
        // handles a single parent
        String jsonString = getSingleObjectWithObjectJSON(Url);
        
        SingleObjectWithObjectClass.SingleObjectWithObject parsed = SingleObjectWithObjectClass.parse(jsonString);
        
        List<SingleObjectWithObjectClass.SingleObjectWithObject> results = new List<SingleObjectWithObjectClass.SingleObjectWithObject>();
        results.add(parsed);
        
        return results;
    }
    private static String getSingleObjectWithObjectJSON(String Url)
    {
        return '{"color":"red","value":"#f00","valuation":{"high":"5","low":"3"}}';
    }
    
    @AuraEnabled
    public static List<SingleObjectWithArrayAndObjectClass.SingleObjectWithArrayAndObject> singleObjectWithArrayAndObject(String Url)
    {
        // handles a single parent
        String jsonString = getSingleObjectWithArrayAndObjectJSON(Url);
        
        SingleObjectWithArrayAndObjectClass.SingleObjectWithArrayAndObject parsed = SingleObjectWithArrayAndObjectClass.parse(jsonString);
        
        List<SingleObjectWithArrayAndObjectClass.SingleObjectWithArrayAndObject> results = new List<SingleObjectWithArrayAndObjectClass.SingleObjectWithArrayAndObject>();
        results.add(parsed);
        
        return results;
    }
    private static String getSingleObjectWithArrayAndObjectJSON(String Url)
    {
        return '{"color":"red","value":"#f00","items":[{"name":"ball","quantity":"1"}],"valuation":{"high":"5","low":"3"}}';
    }

    @AuraEnabled
    public static List<ObjectArrayClass.ObjectArray> objectArray(String Url)
    {
        // handles an array
        String jsonString = getObjectArrayJSON(Url);
        
        return ObjectArrayClass.parse(jsonString);
    }
    private static String getObjectArrayJSON(String Url)
    {
        return '[{"color":"red","value":"#f00"},{"color":"black","value":"#000"}]';
    }

    @AuraEnabled
    public static List<ObjectArrayWithArrayClass.ObjectArrayWithArray> objectArrayWithArray(String Url)
    {
        // handles an array
        String jsonString = getObjectArrayWithArrayJSON(Url);
        
        return ObjectArrayWithArrayClass.parse(jsonString);
    }
    private static String getObjectArrayWithArrayJSON(String Url)
    {
        return '[{"color":"red","value":"#f00","items":[{"name":"ball","quantity":"1"}]},{"color":"black","value":"#000","items":[{"name":"piano","quantity":"2"}]}]';
    }

    @AuraEnabled
    public static List<ObjectArrayWithArrayOfArrayClass.ObjectArrayWithArrayOfArray> objectArrayWithArrayOfArray(String Url)
    {
        // handles an array
        String jsonString = getObjectArrayWithArrayOfArrayJSON(Url);
        
        return ObjectArrayWithArrayOfArrayClass.parse(jsonString);
    }
    private static String getObjectArrayWithArrayOfArrayJSON(String Url)
    {
        return '[{"color":"red","value":"#f00","items":[{"name":"ball","quantity":"1","types":[{"name":"playground"},{"name":"beach"}]}]},{"color":"black","value":"#000","items":[{"name":"piano","quantity":"2","types":[{"name":"grand"},{"name":"upright"}]}]}]';
    }
    
    @AuraEnabled
    public static List<ObjectArrayWithObjectClass.ObjectArrayWithObject> objectArrayWithObject(String Url)
    {
        // handles an array
        String jsonString = getObjectArrayWithObjectJSON(Url);
        
        return ObjectArrayWithObjectClass.parse(jsonString);
    }
    private static String getObjectArrayWithObjectJSON(String Url)
    {
        return '[{"color":"red","value":"#f00","valuation":{"high":"5","low":"3"}},{"color":"black","value":"#000","valuation":{"high":"5000","low":"3000"}}]';
    }

    @AuraEnabled
    public static List<ObjectArrayWithArrayAndObjectClass.ObjectArrayWithArrayAndObject> objectArrayWithArrayAndObject(String Url)
    {
        // handles an array
        String jsonString = getObjectArrayWithArrayAndObjectJSON(Url);
        
        return ObjectArrayWithArrayAndObjectClass.parse(jsonString);
    }
    private static String getObjectArrayWithArrayAndObjectJSON(String Url)
    {
        return '[{"color":"red","value":"#f00","items":[{"name":"ball","quantity":"1"}],"valuation":{"high":"5","low":"3"}},{"color":"black","value":"#000","items":[{"name":"piano","quantity":"2"}],"valuation":{"high":"5000","low":"3000"}}]';
    }

    /*
     * Handles the generic call to the URL to get the JSON string
     */
    private static String getRestJson(String Url)
    {
        // Instantiate a new http object
        Http h = new Http();
        
        // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
        HttpRequest req = new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
        
        // Send the request, and return a response
        HttpResponse res = h.send(req);
        return res.getBody();
    }
}