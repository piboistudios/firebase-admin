package firebase_admin.firestore;

/**
	An options object that configures the behavior of `set()` calls in
	`DocumentReference`, `WriteBatch` and `Transaction`. These calls can be
	configured to perform granular merges instead of overwriting the target
	documents in their entirety.
**/
typedef SetOptions = {
	/**
		Changes the behavior of a set() call to only replace the values specified
		in its data argument. Fields omitted from the set() call remain
		untouched.
	**/
	@:optional
	final merge : Bool;
	/**
		Changes the behavior of set() calls to only replace the specified field
		paths. Any field path that is not specified is ignored and remains
		untouched.
		
		It is an error to pass a SetOptions object to a set() call that is
		missing a value for any of the fields specified here.
	**/
	@:optional
	final mergeFields : Array<ts.AnyOf2<String, FieldPath>>;
};