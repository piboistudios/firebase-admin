package firebase_admin.lib.auth.auth_config;

/**
	The base Auth provider configuration interface.
**/
typedef BaseAuthProviderConfig = {
	/**
		The provider ID defined by the developer.
		For a SAML provider, this is always prefixed by `saml.`.
		For an OIDC provider, this is always prefixed by `oidc.`.
	**/
	var providerId : String;
	/**
		The user-friendly display name to the current configuration. This name is
		also used as the provider label in the Cloud Console.
	**/
	@:optional
	var displayName : String;
	/**
		Whether the provider configuration is enabled or disabled. A user
		cannot sign in using a disabled provider.
	**/
	var enabled : Bool;
};