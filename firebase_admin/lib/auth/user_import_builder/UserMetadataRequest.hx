package firebase_admin.lib.auth.user_import_builder;

/**
	User metadata to include when importing a user.
**/
typedef UserMetadataRequest = {
	/**
		The date the user last signed in, formatted as a UTC string.
	**/
	@:optional
	var lastSignInTime : String;
	/**
		The date the user was created, formatted as a UTC string.
	**/
	@:optional
	var creationTime : String;
};