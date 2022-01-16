package firebase_admin.lib.auth.auth_config;

/**
	Represents a user identity provider that can be associated with a Firebase user.
**/
typedef UserProvider = {
	/**
		The user identifier for the linked provider.
	**/
	@:optional
	var uid : String;
	/**
		The display name for the linked provider.
	**/
	@:optional
	var displayName : String;
	/**
		The email for the linked provider.
	**/
	@:optional
	var email : String;
	/**
		The phone number for the linked provider.
	**/
	@:optional
	var phoneNumber : String;
	/**
		The photo URL for the linked provider.
	**/
	@:optional
	var photoURL : String;
	/**
		The linked provider ID (for example, "google.com" for the Google provider).
	**/
	@:optional
	var providerId : String;
};