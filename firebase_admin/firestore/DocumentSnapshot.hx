package firebase_admin.firestore;

/**
	A `DocumentSnapshot` contains data read from a document in your Firestore
	database. The data can be extracted with `.data()` or `.get(<field>)` to
	get a specific field.
	
	For a `DocumentSnapshot` that points to a non-existing document, any data
	access will return 'undefined'. You can use the `exists` property to
	explicitly verify a document's existence.
**/
@:jsRequire("firebase-admin", "firestore.DocumentSnapshot") extern class DocumentSnapshot<T> {
	private function new();
	/**
		True if the document exists.
	**/
	final exists : Bool;
	/**
		A `DocumentReference` to the document location.
	**/
	final ref : DocumentReference<T>;
	/**
		The ID of the document for which this `DocumentSnapshot` contains data.
	**/
	final id : String;
	/**
		The time the document was created. Not set for documents that don't
		exist.
	**/
	@:optional
	final createTime : Timestamp;
	/**
		The time the document was last updated (at the time the snapshot was
		generated). Not set for documents that don't exist.
	**/
	@:optional
	final updateTime : Timestamp;
	/**
		The time this snapshot was read.
	**/
	final readTime : Timestamp;
	/**
		Retrieves all fields in the document as an Object. Returns 'undefined' if
		the document doesn't exist.
	**/
	function data():Null<T>;
	/**
		Retrieves the field specified by `fieldPath`.
	**/
	function get(fieldPath:ts.AnyOf2<String, FieldPath>):Dynamic;
	/**
		Returns true if the document's data and path in this `DocumentSnapshot`
		is equal to the provided one.
	**/
	function isEqual(other:DocumentSnapshot<T>):Bool;
	static var prototype : DocumentSnapshot<Dynamic>;
}