package firebase_admin.firestore;

/**
	A Firestore BulkWriter than can be used to perform a large number of writes
	in parallel. Writes to the same document will be executed sequentially.
**/
@:jsRequire("firebase-admin", "firestore.BulkWriter") extern class BulkWriter {
	private function new();
	/**
		Create a document with the provided data. This single operation will fail
		if a document exists at its location.
	**/
	function create<T>(documentRef:DocumentReference<T>, data:T):js.lib.Promise<WriteResult>;
	/**
		Delete a document from the database.
	**/
	function delete(documentRef:DocumentReference<Dynamic>, ?precondition:Precondition):js.lib.Promise<WriteResult>;
	/**
		Write to the document referred to by the provided
		[DocumentReference]{@link DocumentReference}. If the document does not
		exist yet, it will be created. If you pass
		[SetOptions]{@link SetOptions}., the provided data can be merged into the
		existing document.
	**/
	@:overload(function<T>(documentRef:DocumentReference<T>, data:T):js.lib.Promise<WriteResult> { })
	function set<T>(documentRef:DocumentReference<T>, data:T, options:SetOptions):js.lib.Promise<WriteResult>;
	/**
		Update fields of the document referred to by the provided
		[DocumentReference]{@link DocumentReference}. If the document doesn't yet
		exist, the update fails and the entire batch will be rejected.
		
		The update() method accepts either an object with field paths encoded as
		keys and field values encoded as values, or a variable number of
		arguments that alternate between field paths and field values. Nested
		fields can be updated by providing dot-separated field path strings or by
		providing FieldPath objects.
		
		
		A Precondition restricting this update can be specified as the last
		argument.
		
		Update fields of the document referred to by the provided
		[DocumentReference]{@link DocumentReference}. If the document doesn't yet
		exist, the update fails and the entire batch will be rejected.
		
		The update() method accepts either an object with field paths encoded as
		keys and field values encoded as values, or a variable number of
		arguments that alternate between field paths and field values. Nested
		fields can be updated by providing dot-separated field path strings or by
		providing FieldPath objects.
		
		
		A Precondition restricting this update can be specified as the last
		argument.
	**/
	@:overload(function(documentRef:DocumentReference<Dynamic>, field:ts.AnyOf2<String, FieldPath>, value:Dynamic, fieldsOrPrecondition:haxe.extern.Rest<Dynamic>):js.lib.Promise<WriteResult> { })
	function update(documentRef:DocumentReference<Dynamic>, data:UpdateData, ?precondition:Precondition):js.lib.Promise<WriteResult>;
	/**
		Attaches a listener that is run every time a BulkWriter operation
		successfully completes.
	**/
	function onWriteResult(callback:(documentRef:DocumentReference<Dynamic>, result:WriteResult) -> Void):Void;
	/**
		Attaches an error handler listener that is run every time a BulkWriter
		operation fails.
		
		BulkWriter has a default error handler that retries UNAVAILABLE and
		ABORTED errors up to a maximum of 10 failed attempts. When an error
		handler is specified, the default error handler will be overwritten.
	**/
	// function onWriteError(shouldRetryCallback:(error:global.firebasefirestore.BulkWriterError) -> Bool):Void;
	/**
		Commits all writes that have been enqueued up to this point in parallel.
		
		Returns a Promise that resolves when all currently queued operations have
		been committed. The Promise will never be rejected since the results for
		each individual operation are conveyed via their individual Promises.
		
		The Promise resolves immediately if there are no pending writes.
		Otherwise, the Promise waits for all previously issued writes, but it
		does not wait for writes that were added after the method is called. If
		you want to wait for additional writes, call `flush()` again.
	**/
	function flush():js.lib.Promise<ts.Undefined>;
	/**
		Commits all enqueued writes and marks the BulkWriter instance as closed.
		
		After calling `close()`, calling any method will throw an error. Any
		retries scheduled as part of an `onWriteError()` handler will be run
		before the `close()` promise resolves.
		
		Returns a Promise that resolves when all writes have been committed. The
		Promise will never be rejected. Calling this method will send all
		requests. The promise resolves immediately if there are no pending
		writes.
	**/
	function close():js.lib.Promise<ts.Undefined>;
	static var prototype : BulkWriter;
}