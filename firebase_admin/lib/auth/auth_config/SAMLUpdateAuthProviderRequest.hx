package firebase_admin.lib.auth.auth_config;

/**
	The request interface for updating a SAML Auth provider. This is used
	when updating a SAML provider's configuration via
	{@link BaseAuth.updateProviderConfig}.
**/
typedef SAMLUpdateAuthProviderRequest = {
	/**
		The SAML provider's updated display name. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var displayName : String;
	/**
		Whether the SAML provider is enabled or not. If not provided, the existing
		configuration's setting is not modified.
	**/
	@:optional
	var enabled : Bool;
	/**
		The SAML provider's updated IdP entity ID. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var idpEntityId : String;
	/**
		The SAML provider's updated SSO URL. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var ssoURL : String;
	/**
		The SAML provider's updated list of X.509 certificated. If not provided, the
		existing configuration list is not modified.
	**/
	@:optional
	var x509Certificates : Array<String>;
	/**
		The SAML provider's updated RP entity ID. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var rpEntityId : String;
	/**
		The SAML provider's callback URL. If not provided, the existing
		configuration's value is not modified.
	**/
	@:optional
	var callbackURL : String;
};