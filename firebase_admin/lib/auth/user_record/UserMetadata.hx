package firebase_admin.lib.auth.user_record;

/**
	Represents a user's metadata.
**/
@:jsRequire("firebase-admin/lib/auth/user-record", "UserMetadata") extern class UserMetadata {
	function new();
	/**
		The date the user was created, formatted as a UTC string.
	**/
	final creationTime : String;
	/**
		The date the user last signed in, formatted as a UTC string.
	**/
	final lastSignInTime : String;
	/**
		The time at which the user was last active (ID token refreshed),
		formatted as a UTC Date string (eg 'Sat, 03 Feb 2001 04:05:06 GMT').
		Returns null if the user was never active.
	**/
	@:optional
	final lastRefreshTime : String;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Dynamic;
	static var prototype : UserMetadata;
}