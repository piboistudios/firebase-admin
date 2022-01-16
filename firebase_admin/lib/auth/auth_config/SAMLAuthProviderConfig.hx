package firebase_admin.lib.auth.auth_config;

/**
	The
	[SAML](http://docs.oasis-open.org/security/saml/Post2.0/sstc-saml-tech-overview-2.0.html)
	Auth provider configuration interface. A SAML provider can be created via
	{@link BaseAuth.createProviderConfig}.
**/
typedef SAMLAuthProviderConfig = {
	/**
		The SAML IdP entity identifier.
	**/
	var idpEntityId : String;
	/**
		The SAML IdP SSO URL. This must be a valid URL.
	**/
	var ssoURL : String;
	/**
		The list of SAML IdP X.509 certificates issued by CA for this provider.
		Multiple certificates are accepted to prevent outages during
		IdP key rotation (for example ADFS rotates every 10 days). When the Auth
		server receives a SAML response, it will match the SAML response with the
		certificate on record. Otherwise the response is rejected.
		Developers are expected to manage the certificate updates as keys are
		rotated.
	**/
	var x509Certificates : Array<String>;
	/**
		The SAML relying party (service provider) entity ID.
		This is defined by the developer but needs to be provided to the SAML IdP.
	**/
	var rpEntityId : String;
	/**
		This is fixed and must always be the same as the OAuth redirect URL
		provisioned by Firebase Auth,
		`https://project-id.firebaseapp.com/__/auth/handler` unless a custom
		`authDomain` is used.
		The callback URL should also be provided to the SAML IdP during
		configuration.
	**/
	@:optional
	var callbackURL : String;
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