package firebase_admin.firestore;

/**
	A `CollectionReference` object can be used for adding documents, getting
	document references, and querying for documents (using the methods
	inherited from `Query`).
**/
@:jsRequire("firebase-admin", "firestore.CollectionReference") extern class CollectionReference<T> extends Query<T> {
	private function new();
	/**
		The identifier of the collection.
	**/
	final id : String;
	/**
		A reference to the containing Document if this is a subcollection, else
		null.
	**/
	final parent : Null<DocumentReference<DocumentData>>;
	/**
		A string representing the path of the referenced collection (relative
		to the root of the database).
	**/
	final path : String;
	/**
		Retrieves the list of documents in this collection.
		
		The document references returned may include references to "missing
		documents", i.e. document locations that have no document present but
		which contain subcollections with documents. Attempting to read such a
		document reference (e.g. via `.get()` or `.onSnapshot()`) will return a
		`DocumentSnapshot` whose `.exists` property is false.
	**/
	function listDocuments():js.lib.Promise<Array<DocumentReference<T>>>;
	/**
		Get a `DocumentReference` for a randomly-named document within this
		collection. An automatically-generated unique ID will be used as the
		document ID.
		
		Get a `DocumentReference` for the document within the collection at the
		specified path.
	**/
	@:overload(function(documentPath:String):DocumentReference<T> { })
	function doc():DocumentReference<T>;
	/**
		Add a new document to this collection with the specified data, assigning
		it a document ID automatically.
	**/
	function add(data:T):js.lib.Promise<DocumentReference<T>>;
	/**
		Returns true if this `CollectionReference` is equal to the provided one.
	**/
	function isEqual(other:CollectionReference<T>):Bool;
	/**
		Applies a custom data converter to this CollectionReference, allowing you
		to use your own custom model objects with Firestore. When you call add()
		on the returned CollectionReference instance, the provided converter will
		convert between Firestore data and your custom type U.
	**/
	@:overload(function(converter:Dynamic):CollectionReference<DocumentData> { })
	function withConverter<U>(converter:FirestoreDataConverter<U>):CollectionReference<U>;
	static var prototype : CollectionReference<Dynamic>;
}