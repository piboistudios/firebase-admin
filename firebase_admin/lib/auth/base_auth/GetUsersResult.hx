package firebase_admin.lib.auth.base_auth;

/**
	Represents the result of the {@link BaseAuth.getUsers} API.
**/
typedef GetUsersResult = {
	/**
		Set of user records, corresponding to the set of users that were
		requested. Only users that were found are listed here. The result set is
		unordered.
	**/
	var users : Array<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Set of identifiers that were requested, but not found.
	**/
	var notFound : Array<firebase_admin.lib.auth.identifier.UserIdentifier>;
};