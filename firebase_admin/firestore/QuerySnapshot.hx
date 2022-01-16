package firebase_admin.firestore;

/**
	A `QuerySnapshot` contains zero or more `QueryDocumentSnapshot` objects
	representing the results of a query. The documents can be accessed as an
	array via the `docs` property or enumerated using the `forEach` method. The
	number of documents can be determined via the `empty` and `size`
	properties.
**/
@:jsRequire("firebase-admin", "firestore.QuerySnapshot") extern class QuerySnapshot<T> {
	private function new();
	/**
		The query on which you called `get` or `onSnapshot` in order to get this
		`QuerySnapshot`.
	**/
	final query : Query<T>;
	/**
		An array of all the documents in the QuerySnapshot.
	**/
	final docs : Array<QueryDocumentSnapshot<T>>;
	/**
		The number of documents in the QuerySnapshot.
	**/
	final size : Float;
	/**
		True if there are no documents in the QuerySnapshot.
	**/
	final empty : Bool;
	/**
		The time this query snapshot was obtained.
	**/
	final readTime : Timestamp;
	/**
		Returns an array of the documents changes since the last snapshot. If
		this is the first snapshot, all documents will be in the list as added
		changes.
	**/
	function docChanges():Array<DocumentChange<T>>;
	/**
		Enumerates all of the documents in the QuerySnapshot.
	**/
	function forEach(callback:(result:QueryDocumentSnapshot<T>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns true if the document data in this `QuerySnapshot` is equal to the
		provided one.
	**/
	function isEqual(other:QuerySnapshot<T>):Bool;
	static var prototype : QuerySnapshot<Dynamic>;
}