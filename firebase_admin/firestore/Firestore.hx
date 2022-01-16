package firebase_admin.firestore;

/**
	`Firestore` represents a Firestore Database and is the entry point for all
	Firestore operations.
**/
@:jsRequire("firebase-admin", "firestore.Firestore") extern class Firestore {
	public function new(?settings:Settings);
	/**
		Specifies custom settings to be used to configure the `Firestore`
		instance. Can only be invoked once and before any other Firestore
		method.
		
		If settings are provided via both `settings()` and the `Firestore`
		constructor, both settings objects are merged and any settings provided
		via `settings()` take precedence.
	**/
	function settings(settings:Settings):Void;
	/**
		Gets a `CollectionReference` instance that refers to the collection at
		the specified path.
	**/
	function collection(collectionPath:String):CollectionReference<DocumentData>;
	/**
		Gets a `DocumentReference` instance that refers to the document at the
		specified path.
	**/
	function doc(documentPath:String):DocumentReference<DocumentData>;
	/**
		Creates and returns a new Query that includes all documents in the
		database that are contained in a collection or subcollection with the
		given collectionId.
	**/
	function collectionGroup(collectionId:String):CollectionGroup<DocumentData>;
	/**
		Retrieves multiple documents from Firestore.
		
		The first argument is required and must be of type `DocumentReference`
		followed by any additional `DocumentReference` documents. If used, the
		optional `ReadOptions` must be the last argument.
	**/
	function getAll(documentRefsOrReadOptions:haxe.extern.Rest<ts.AnyOf2<DocumentReference<DocumentData>, ReadOptions>>):js.lib.Promise<Array<DocumentSnapshot<DocumentData>>>;
	/**
		Recursively deletes all documents and subcollections at and under the
		specified level.
		
		If any delete fails, the promise is rejected with an error message
		containing the number of failed deletes and the stack trace of the last
		failed delete. The provided reference is deleted regardless of whether
		all deletes succeeded.
		
		`recursiveDelete()` uses a BulkWriter instance with default settings to
		perform the deletes. To customize throttling rates or add success/error
		callbacks, pass in a custom BulkWriter instance.
	**/
	function recursiveDelete(ref:ts.AnyOf2<CollectionReference<Any>, DocumentReference<Any>>, ?bulkWriter:BulkWriter):js.lib.Promise<ts.Undefined>;
	/**
		Terminates the Firestore client and closes all open streams.
	**/
	function terminate():js.lib.Promise<ts.Undefined>;
	/**
		Fetches the root collections that are associated with this Firestore
		database.
	**/
	function listCollections():js.lib.Promise<Array<CollectionReference<DocumentData>>>;
	/**
		Executes the given updateFunction and commits the changes applied within
		the transaction.
		
		You can use the transaction object passed to 'updateFunction' to read and
		modify Firestore documents under lock. You have to perform all reads
		before before you perform any write.
		
		Transactions can be performed as read-only or read-write transactions. By
		default, transactions are executed in read-write mode.
		
		A read-write transaction obtains a pessimistic lock on all documents that
		are read during the transaction. These locks block other transactions,
		batched writes, and other non-transactional writes from changing that
		document. Any writes in a read-write transactions are committed once
		'updateFunction' resolves, which also releases all locks.
		
		If a read-write transaction fails with contention, the transaction is
		retried up to five times. The `updateFunction` is invoked once for each
		attempt.
		
		Read-only transactions do not lock documents. They can be used to read
		documents at a consistent snapshot in time, which may be up to 60 seconds
		in the past. Read-only transactions are not retried.
		
		Transactions time out after 60 seconds if no documents are read.
		Transactions that are not committed within than 270 seconds are also
		aborted. Any remaining locks are released when a transaction times out.
	**/
	// function runTransaction<T>(updateFunction:(transaction:Transaction) -> js.lib.Promise<T>, ?transactionOptions:ts.AnyOf2<global.firebasefirestore.ReadWriteTransactionOptions, global.firebasefirestore.ReadOnlyTransactionOptions>):js.lib.Promise<T>;
	/**
		Creates a write batch, used for performing multiple writes as a single
		atomic operation.
	**/
	function batch():WriteBatch;
	/**
		Creates a [BulkWriter]{@link BulkWriter}, used for performing
		multiple writes in parallel. Gradually ramps up writes as specified
		by the 500/50/5 rule.
	**/
	function bulkWriter(?options:BulkWriterOptions):BulkWriter;
	/**
		Creates a new `BundleBuilder` instance to package selected Firestore data into
		a bundle.
	**/
	function bundle(?bundleId:String):BundleBuilder;
	static var prototype : Firestore;
}