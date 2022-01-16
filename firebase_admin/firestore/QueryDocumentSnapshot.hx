package firebase_admin.firestore;

/**
	A `QueryDocumentSnapshot` contains data read from a document in your
	Firestore database as part of a query. The document is guaranteed to exist
	and its data can be extracted with `.data()` or `.get(<field>)` to get a
	specific field.
	
	A `QueryDocumentSnapshot` offers the same API surface as a
	`DocumentSnapshot`. Since query results contain only existing documents, the
	`exists` property will always be true and `data()` will never return
	'undefined'.
**/
@:jsRequire("firebase-admin", "firestore.QueryDocumentSnapshot") extern class QueryDocumentSnapshot<T> extends DocumentSnapshot<T> {
	private function new();
	/**
		Retrieves all fields in the document as an Object.
	**/
	function data():T;
	static var prototype : QueryDocumentSnapshot<Dynamic>;
}