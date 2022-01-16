package firebase_admin.lib.auth.user_import_builder;

/**
	User provider data to include when importing a user.
**/
typedef UserProviderRequest = {
	/**
		The user identifier for the linked provider.
	**/
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
	var providerId : String;
};