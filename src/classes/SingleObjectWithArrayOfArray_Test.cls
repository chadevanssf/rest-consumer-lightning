//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//

@IsTest
public class SingleObjectWithArrayOfArray_Test {
	
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '{'+
		'	\"color\": \"red\",'+
		'	\"value\": \"#f00\",'+
		'	\"items\":['+
		'		{'+
		'			\"name\":\"ball\",'+
		'			\"quantity\":\"1\",'+
		'			\"types\":['+
		'				{'+
		'					\"name\":\"playground\"'+
		'				},'+
		'				{'+
		'					\"name\":\"beach\"'+
		'				}'+
		'			]'+
		'		}'+
		'	]'+
		'}';
		SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray r = SingleObjectWithArrayOfArrayClass.parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		SingleObjectWithArrayOfArrayClass.Types objTypes = new SingleObjectWithArrayOfArrayClass.Types(System.JSON.createParser(json));
		System.assert(objTypes != null);
		System.assert(objTypes.name == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray objSingleObjectWithArrayOfArray = new SingleObjectWithArrayOfArrayClass.SingleObjectWithArrayOfArray(System.JSON.createParser(json));
		System.assert(objSingleObjectWithArrayOfArray != null);
		System.assert(objSingleObjectWithArrayOfArray.color == null);
		System.assert(objSingleObjectWithArrayOfArray.value == null);
		System.assert(objSingleObjectWithArrayOfArray.items == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		SingleObjectWithArrayOfArrayClass.Items objItems = new SingleObjectWithArrayOfArrayClass.Items(System.JSON.createParser(json));
		System.assert(objItems != null);
		System.assert(objItems.name == null);
		System.assert(objItems.quantity == null);
		System.assert(objItems.types == null);
	}
}