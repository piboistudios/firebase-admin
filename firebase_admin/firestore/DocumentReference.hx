package firebase_admin.firestore;

/**
	A `DocumentReference` refers to a document location in a Firestore database
	and can be used to write, read, or listen to the location. The document at
	the referenced location may or may not exist. A `DocumentReference` can
	also be used to create a `CollectionReference` to a subcollection.
**/
@:jsRequire("firebase-admin", "firestore.DocumentReference") extern class DocumentReference<T> {
	private function new();
	/**
		The identifier of the document within its collection.
	**/
	final id : String;
	/**
		The `Firestore` for the Firestore database (useful for performing
		transactions, etc.).
	**/
	final firestore : Firestore;
	/**
		A reference to the Collection to which this DocumentReference belongs.
	**/
	final parent : CollectionReference<T>;
	/**
		A string representing the path of the referenced document (relative
		to the root of the database).
	**/
	final path : String;
	/**
		Gets a `CollectionReference` instance that refers to the collection at
		the specified path.
	**/
	function collection(collectionPath:String):CollectionReference<DocumentData>;
	/**
		Fetches the subcollections that are direct children of this document.
	**/
	function listCollections():js.lib.Promise<Array<CollectionReference<DocumentData>>>;
	/**
		Creates a document referred to by this `DocumentReference` with the
		provided object values. The write fails if the document already exists
	**/
	function create(data:T):js.lib.Promise<WriteResult>;
	/**
		Writes to the document referred to by this `DocumentReference`. If the
		document does not yet exist, it will be created. If you pass
		`SetOptions`, the provided data can be merged into an existing document.
	**/
	@:overload(function(data:T):js.lib.Promise<WriteResult> { })
	function set(data:T, options:SetOptions):js.lib.Promise<WriteResult>;
	/**
		Updates fields in the document referred to by this `DocumentReference`.
		The update will fail if applied to a document that does not exist.
		
		Nested fields can be updated by providing dot-separated field path
		strings.
		
		Updates fields in the document referred to by this `DocumentReference`.
		The update will fail if applied to a document that does not exist.
		
		Nested fields can be updated by providing dot-separated field path
		strings or by providing FieldPath objects.
		
		A `Precondition` restricting this update can be specified as the last
		argument.
	**/
	@:overload(function(field:ts.AnyOf2<String, FieldPath>, value:Dynamic, moreFieldsOrPrecondition:haxe.extern.Rest<Dynamic>):js.lib.Promise<WriteResult> { })
	function update(data:UpdateData, ?precondition:Precondition):js.lib.Promise<WriteResult>;
	/**
		Deletes the document referred to by this `DocumentReference`.
	**/
	function delete(?precondition:Precondition):js.lib.Promise<WriteResult>;
	/**
		Reads the document referred to by this `DocumentReference`.
	**/
	function get():js.lib.Promise<DocumentSnapshot<T>>;
	/**
		Attaches a listener for DocumentSnapshot events.
	**/
	function onSnapshot(onNext:(snapshot:DocumentSnapshot<T>) -> Void, ?onError:(error:js.lib.Error) -> Void):() -> Void;
	/**
		Returns true if this `DocumentReference` is equal to the provided one.
	**/
	function isEqual(other:DocumentReference<T>):Bool;
	/**
		Applies a custom data converter to this DocumentReference, allowing you
		to use your own custom model objects with Firestore. When you call
		set(), get(), etc. on the returned DocumentReference instance, the
		provided converter will convert between Firestore data and your custom
		type U.
	**/
	@:overload(function(converter:Dynamic):DocumentReference<DocumentData> { })
	function withConverter<U>(converter:FirestoreDataConverter<U>):DocumentReference<U>;
	static var prototype : DocumentReference<Dynamic>;
}