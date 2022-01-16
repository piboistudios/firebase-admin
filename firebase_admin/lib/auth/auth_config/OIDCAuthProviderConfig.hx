package firebase_admin.lib.auth.auth_config;

/**
	The [OIDC](https://openid.net/specs/openid-connect-core-1_0-final.html) Auth
	provider configuration interface. An OIDC provider can be created via
	{@link BaseAuth.createProviderConfig}.
**/
typedef OIDCAuthProviderConfig = {
	/**
		This is the required client ID used to confirm the audience of an OIDC
		provider's
		[ID token](https://openid.net/specs/openid-connect-core-1_0-final.html#IDToken).
	**/
	var clientId : String;
	/**
		This is the required provider issuer used to match the provider issuer of
		the ID token and to determine the corresponding OIDC discovery document, eg.
		[`/.well-known/openid-configuration`](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfig).
		This is needed for the following:
		<ul>
		<li>To verify the provided issuer.</li>
		<li>Determine the authentication/authorization endpoint during the OAuth
		     `id_token` authentication flow.</li>
		<li>To retrieve the public signing keys via `jwks_uri` to verify the OIDC
		     provider's ID token's signature.</li>
		<li>To determine the claims_supported to construct the user attributes to be
		     returned in the additional user info response.</li>
		</ul>
		ID token validation will be performed as defined in the
		[spec](https://openid.net/specs/openid-connect-core-1_0.html#IDTokenValidation).
	**/
	var issuer : String;
	/**
		The OIDC provider's client secret to enable OIDC code flow.
	**/
	@:optional
	var clientSecret : String;
	/**
		The OIDC provider's response object for OAuth authorization flow.
	**/
	@:optional
	var responseType : OAuthResponseType;
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