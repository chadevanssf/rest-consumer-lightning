//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//

@IsTest
public class ObjectArrayWithArrayAndObject_Test {
	
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '['+
		'	{'+
		'		\"color\": \"red\",'+
		'		\"value\": \"#f00\",'+
		'		\"items\":['+
		'			{'+
		'				\"name\":\"ball\",'+
		'				\"quantity\":\"1\"'+
		'			}'+
		'		],'+
		'		\"valuation\":{'+
		'			\"high\":\"5\",'+
		'			\"low\":\"3\"'+
		'		}'+
		'	},'+
		'	{'+
		'		\"color\": \"black\",'+
		'		\"value\": \"#000\",'+
		'		\"items\":['+
		'			{'+
		'				\"name\":\"piano\",'+
		'				\"quantity\":\"2\"'+
		'			}'+
		'		],'+
		'		\"valuation\":{'+
		'			\"high\":\"5000\",'+
		'			\"low\":\"3000\"'+
		'		}'+
		'	}'+
		']';
		List<ObjectArrayWithArrayAndObjectClass.ObjectArrayWithArrayAndObject> r = ObjectArrayWithArrayAndObjectClass.parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		ObjectArrayWithArrayAndObjectClass.ObjectArrayWithArrayAndObject objObjectArrayWithArrayAndObject = new ObjectArrayWithArrayAndObjectClass.ObjectArrayWithArrayAndObject(System.JSON.createParser(json));
		System.assert(objObjectArrayWithArrayAndObject != null);
		System.assert(objObjectArrayWithArrayAndObject.color == null);
		System.assert(objObjectArrayWithArrayAndObject.value == null);
		System.assert(objObjectArrayWithArrayAndObject.valuation == null);
		System.assert(objObjectArrayWithArrayAndObject.items == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		ObjectArrayWithArrayAndObjectClass.Valuation objValue = new ObjectArrayWithArrayAndObjectClass.Valuation(System.JSON.createParser(json));
		System.assert(objValue != null);
		System.assert(objValue.high == null);
		System.assert(objValue.low == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		ObjectArrayWithArrayAndObjectClass.Items objItems = new ObjectArrayWithArrayAndObjectClass.Items(System.JSON.createParser(json));
		System.assert(objItems != null);
		System.assert(objItems.name == null);
		System.assert(objItems.quantity == null);
	}
}