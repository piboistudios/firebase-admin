package firebase_admin.lib.auth.user_record;

/**
	Represents a user's info from a third-party identity provider
	such as Google or Facebook.
**/
@:jsRequire("firebase-admin/lib/auth/user-record", "UserInfo") extern class UserInfo {
	function new();
	/**
		The user identifier for the linked provider.
	**/
	final uid : String;
	/**
		The display name for the linked provider.
	**/
	final displayName : String;
	/**
		The email for the linked provider.
	**/
	final email : String;
	/**
		The photo URL for the linked provider.
	**/
	final photoURL : String;
	/**
		The linked provider ID (for example, "google.com" for the Google provider).
	**/
	final providerId : String;
	/**
		The phone number for the linked provider.
	**/
	final phoneNumber : String;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Dynamic;
	static var prototype : UserInfo;
}