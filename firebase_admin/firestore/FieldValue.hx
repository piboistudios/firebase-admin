package firebase_admin.firestore;

/**
	Sentinel values that can be used when writing document fields with set(),
	create() or update().
**/
@:jsRequire("firebase-admin", "firestore.FieldValue") extern class FieldValue {
	private function new();
	/**
		Returns true if this `FieldValue` is equal to the provided one.
	**/
	function isEqual(other:FieldValue):Bool;
	static var prototype : FieldValue;
	/**
		Returns a sentinel used with set(), create() or update() to include a
		server-generated timestamp in the written data.
	**/
	static function serverTimestamp():FieldValue;
	/**
		Returns a sentinel for use with update() or set() with {merge:true} to
		mark a field for deletion.
	**/
	static function delete():FieldValue;
	/**
		Returns a special value that can be used with set(), create() or update()
		that tells the server to increment the field's current value by the given
		value.
		
		If either current field value or the operand uses floating point
		precision, both values will be interpreted as floating point numbers and
		all arithmetic will follow IEEE 754 semantics. Otherwise, integer
		precision is kept and the result is capped between -2^63 and 2^63-1.
		
		If the current field value is not of type 'number', or if the field does
		not yet exist, the transformation will set the field to the given value.
	**/
	static function increment(n:Float):FieldValue;
	/**
		Returns a special value that can be used with set(), create() or update()
		that tells the server to union the given elements with any array value
		that already exists on the server. Each specified element that doesn't
		already exist in the array will be added to the end. If the field being
		modified is not already an array it will be overwritten with an array
		containing exactly the specified elements.
	**/
	static function arrayUnion(elements:haxe.extern.Rest<Dynamic>):FieldValue;
	/**
		Returns a special value that can be used with set(), create() or update()
		that tells the server to remove the given elements from any array value
		that already exists on the server. All instances of each element
		specified will be removed from the array. If the field being modified is
		not already an array it will be overwritten with an empty array.
	**/
	static function arrayRemove(elements:haxe.extern.Rest<Dynamic>):FieldValue;
}