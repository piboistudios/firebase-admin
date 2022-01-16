package firebase_admin.lib.auth.user_import_builder;

/**
	Interface representing the response from the
	{@link BaseAuth.importUsers} method for batch
	importing users to Firebase Auth.
**/
typedef UserImportResult = {
	/**
		The number of user records that failed to import to Firebase Auth.
	**/
	var failureCount : Float;
	/**
		The number of user records that successfully imported to Firebase Auth.
	**/
	var successCount : Float;
	/**
		An array of errors corresponding to the provided users to import. The
		length of this array is equal to [`failureCount`](#failureCount).
	**/
	var errors : Array<firebase_admin.FirebaseArrayIndexError>;
};