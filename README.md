# rest-consumer-lightning
Quick wrapper around json2apex.herokuapp.com to make displaying REST data easy in Salesforce Lightning Experience
## Setup
1. Create your Apex class from j2a at [json2apex.herokuapp.com]
2. Modify the class to have `@AruaEnabled` on each property that is exposed
  * from `public String color {get;set}` to `@AuraEnabeld public String color {get;set}`
  * you might have to rename your outer Apex class to get it to compile
3. If your JSON has an array at the root (signified by '[') you will need to modify the code from j2a as noted here [https://github.com/superfell/json2apex/issues/21#issuecomment-315777630]
4. Add a method to Json2ApexController for your specific class generated from j2a following the pattern in the `singleObject()` or `objectArray()` methods
5. Modify the ~CallRESTEndpoint~ component to call your new method by changing the value on the `<lighting:button label="Call/>` button to the name of your method in the controller
6. Test by entering the full url needed and clicking the Call button

## References
Projects that have been used:
* [https://github.com/appiphony/Strike-Components] strike-dataGrid / strike_row
