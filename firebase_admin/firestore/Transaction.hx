package firebase_admin.firestore;

/**
	A reference to a transaction.
	The `Transaction` object passed to a transaction's updateFunction provides
	the methods to read and write data within the transaction context. See
	`Firestore.runTransaction()`.
**/
@:jsRequire("firebase-admin", "firestore.Transaction") extern class Transaction {
	private function new();
	/**
		Retrieves a query result. Holds a pessimistic lock on all returned
		documents.
		
		Reads the document referenced by the provided `DocumentReference.`
		Holds a pessimistic lock on the returned document.
	**/
	@:overload(function<T>(documentRef:DocumentReference<T>):js.lib.Promise<DocumentSnapshot<T>> { })
	function get<T>(query:Query<T>):js.lib.Promise<QuerySnapshot<T>>;
	/**
		Retrieves multiple documents from Firestore. Holds a pessimistic lock on
		all returned documents.
		
		The first argument is required and must be of type `DocumentReference`
		followed by any additional `DocumentReference` documents. If used, the
		optional `ReadOptions` must be the last argument.
	**/
	function getAll<T>(documentRefsOrReadOptions:haxe.extern.Rest<ts.AnyOf2<ReadOptions, DocumentReference<T>>>):js.lib.Promise<Array<DocumentSnapshot<T>>>;
	/**
		Create the document referred to by the provided `DocumentReference`.
		The operation will fail the transaction if a document exists at the
		specified location.
	**/
	function create<T>(documentRef:DocumentReference<T>, data:T):Transaction;
	/**
		Writes to the document referred to by the provided `DocumentReference`.
		If the document does not exist yet, it will be created. If you pass
		`SetOptions`, the provided data can be merged into the existing document.
	**/
	@:overload(function<T>(documentRef:DocumentReference<T>, data:T):Transaction { })
	function set<T>(documentRef:DocumentReference<T>, data:T, options:SetOptions):Transaction;
	/**
		Updates fields in the document referred to by the provided
		`DocumentReference`. The update will fail if applied to a document that
		does not exist.
		
		Nested fields can be updated by providing dot-separated field path
		strings.
		
		Updates fields in the document referred to by the provided
		`DocumentReference`. The update will fail if applied to a document that
		does not exist.
		
		Nested fields can be updated by providing dot-separated field path
		strings or by providing FieldPath objects.
		
		A `Precondition` restricting this update can be specified as the last
		argument.
	**/
	@:overload(function(documentRef:DocumentReference<Dynamic>, field:ts.AnyOf2<String, FieldPath>, value:Dynamic, fieldsOrPrecondition:haxe.extern.Rest<Dynamic>):Transaction { })
	function update(documentRef:DocumentReference<Dynamic>, data:UpdateData, ?precondition:Precondition):Transaction;
	/**
		Deletes the document referred to by the provided `DocumentReference`.
	**/
	function delete(documentRef:DocumentReference<Dynamic>, ?precondition:Precondition):Transaction;
	static var prototype : Transaction;
}