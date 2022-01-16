package firebase_admin.firestore;

/**
	A FieldPath refers to a field in a document. The path may consist of a
	single field name (referring to a top-level field in the document), or a
	list of field names (referring to a nested field in the document).
**/
@:jsRequire("firebase-admin", "firestore.FieldPath") extern class FieldPath {
	/**
		Creates a FieldPath from the provided field names. If more than one field
		name is provided, the path will point to a nested field in a document.
	**/
	function new(fieldNames:haxe.extern.Rest<String>);
	/**
		Returns true if this `FieldPath` is equal to the provided one.
	**/
	function isEqual(other:FieldPath):Bool;
	static var prototype : FieldPath;
	/**
		Returns a special sentinel FieldPath to refer to the ID of a document.
		It can be used in queries to sort or filter by the document ID.
	**/
	static function documentId():FieldPath;
}