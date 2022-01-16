package firebase_admin.lib.auth.base_auth;

/**
	Represents the result of the {@link BaseAuth.deleteUsers}.
	API.
**/
typedef DeleteUsersResult = {
	/**
		The number of user records that failed to be deleted (possibly zero).
	**/
	var failureCount : Float;
	/**
		The number of users that were deleted successfully (possibly zero).
		Users that did not exist prior to calling `deleteUsers()` are
		considered to be successfully deleted.
	**/
	var successCount : Float;
	/**
		A list of `FirebaseArrayIndexError` instances describing the errors that
		were encountered during the deletion. Length of this list is equal to
		the return value of {@link DeleteUsersResult.failureCount}.
	**/
	var errors : Array<firebase_admin.FirebaseArrayIndexError>;
};