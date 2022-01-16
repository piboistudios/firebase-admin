package firebase_admin.firestore;

/**
	A write batch, used to perform multiple writes as a single atomic unit.
	
	A `WriteBatch` object can be acquired by calling `Firestore.batch()`. It
	provides methods for adding writes to the write batch. None of the
	writes will be committed (or visible locally) until `WriteBatch.commit()`
	is called.
	
	Unlike transactions, write batches are persisted offline and therefore are
	preferable when you don't need to condition your writes on read data.
**/
@:jsRequire("firebase-admin", "firestore.WriteBatch") extern class WriteBatch {
	private function new();
	/**
		Create the document referred to by the provided `DocumentReference`. The
		operation will fail the batch if a document exists at the specified
		location.
	**/
	function create<T>(documentRef:DocumentReference<T>, data:T):WriteBatch;
	/**
		Write to the document referred to by the provided `DocumentReference`.
		If the document does not exist yet, it will be created. If you pass
		`SetOptions`, the provided data can be merged into the existing document.
	**/
	@:overload(function<T>(documentRef:DocumentReference<T>, data:T):WriteBatch { })
	function set<T>(documentRef:DocumentReference<T>, data:T, options:SetOptions):WriteBatch;
	/**
		Update fields of the document referred to by the provided
		`DocumentReference`. If the document doesn't yet exist, the update fails
		and the entire batch will be rejected.
		
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
	@:overload(function(documentRef:DocumentReference<Dynamic>, field:ts.AnyOf2<String, FieldPath>, value:Dynamic, fieldsOrPrecondition:haxe.extern.Rest<Dynamic>):WriteBatch { })
	function update(documentRef:DocumentReference<Dynamic>, data:UpdateData, ?precondition:Precondition):WriteBatch;
	/**
		Deletes the document referred to by the provided `DocumentReference`.
	**/
	function delete(documentRef:DocumentReference<Dynamic>, ?precondition:Precondition):WriteBatch;
	/**
		Commits all of the writes in this write batch as a single atomic unit.
	**/
	function commit():js.lib.Promise<Array<WriteResult>>;
	static var prototype : WriteBatch;
}