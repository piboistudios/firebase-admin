package firebase_admin.firestore;

/**
	A `DocumentChange` represents a change to the documents matching a query.
	It contains the document affected and the type of change that occurred.
**/
typedef DocumentChange<T> = {
	/**
		The type of change ('added', 'modified', or 'removed').
	**/
	final type : DocumentChangeType;
	/**
		The document affected by this change.
	**/
	final doc : QueryDocumentSnapshot<T>;
	/**
		The index of the changed document in the result set immediately prior to
		this DocumentChange (i.e. supposing that all prior DocumentChange objects
		have been applied). Is -1 for 'added' events.
	**/
	final oldIndex : Float;
	/**
		The index of the changed document in the result set immediately after
		this DocumentChange (i.e. supposing that all prior DocumentChange
		objects and the current DocumentChange object have been applied).
		Is -1 for 'removed' events.
	**/
	final newIndex : Float;
	/**
		Returns true if the data in this `DocumentChange` is equal to the
		provided one.
	**/
	function isEqual(other:DocumentChange<T>):Bool;
};