package firebase_admin.lib.auth.base_auth;

/**
	Interface representing the object returned from a
	{@link BaseAuth.listUsers} operation. Contains the list
	of users for the current batch and the next page token if available.
**/
typedef ListUsersResult = {
	/**
		The list of {@link UserRecord} objects for the
		current downloaded batch.
	**/
	var users : Array<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		The next page token if available. This is needed for the next batch download.
	**/
	@:optional
	var pageToken : String;
};