package firebase_admin.lib.auth.auth_config;

/**
	The request interface for updating an OIDC Auth provider. This is used
	when updating an OIDC provider's configuration via
	{@link BaseAuth.updateProviderConfig}.
**/
typedef OIDCUpdateAuthProviderRequest = {
	/**
		The OIDC provider's updated display name. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var displayName : String;
	/**
		Whether the OIDC provider is enabled or not. If not provided, the existing
		configuration's setting is not modified.
	**/
	@:optional
	var enabled : Bool;
	/**
		The OIDC provider's updated client ID. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var clientId : String;
	/**
		The OIDC provider's updated issuer. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var issuer : String;
	/**
		The OIDC provider's client secret to enable OIDC code flow.
		If not provided, the existing configuration's value is not modified.
	**/
	@:optional
	var clientSecret : String;
	/**
		The OIDC provider's response object for OAuth authorization flow.
	**/
	@:optional
	var responseType : OAuthResponseType;
};