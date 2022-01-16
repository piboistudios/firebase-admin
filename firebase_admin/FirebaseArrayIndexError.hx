package firebase_admin;

/**
	Composite type which includes both a `FirebaseError` object and an index
	which can be used to get the errored item.
**/
typedef FirebaseArrayIndexError = {
	/**
		The index of the errored item within the original array passed as part of the
		called API method.
	**/
	var index : Float;
	/**
		The error object.
	**/
	var error : FirebaseError;
};