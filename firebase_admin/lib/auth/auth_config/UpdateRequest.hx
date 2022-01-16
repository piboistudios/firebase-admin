package firebase_admin.lib.auth.auth_config;

/**
	Interface representing the properties to update on the provided user.
**/
typedef UpdateRequest = {
	/**
		Whether or not the user is disabled: `true` for disabled;
		`false` for enabled.
	**/
	@:optional
	var disabled : Bool;
	/**
		The user's display name.
	**/
	@:optional
	var displayName : String;
	/**
		The user's primary email.
	**/
	@:optional
	var email : String;
	/**
		Whether or not the user's primary email is verified.
	**/
	@:optional
	var emailVerified : Bool;
	/**
		The user's unhashed password.
	**/
	@:optional
	var password : String;
	/**
		The user's primary phone number.
	**/
	@:optional
	var phoneNumber : String;
	/**
		The user's photo URL.
	**/
	@:optional
	var photoURL : String;
	/**
		The user's updated multi-factor related properties.
	**/
	@:optional
	var multiFactor : MultiFactorUpdateSettings;
	/**
		Links this user to the specified provider.
		
		Linking a provider to an existing user account does not invalidate the
		refresh token of that account. In other words, the existing account
		would continue to be able to access resources, despite not having used
		the newly linked provider to log in. If you wish to force the user to
		authenticate with this new provider, you need to (a) revoke their
		refresh token (see
		https://firebase.google.com/docs/auth/admin/manage-sessions#revoke_refresh_tokens),
		and (b) ensure no other authentication methods are present on this
		account.
	**/
	@:optional
	var providerToLink : UserProvider;
	/**
		Unlinks this user from the specified providers.
	**/
	@:optional
	var providersToUnlink : Array<String>;
};