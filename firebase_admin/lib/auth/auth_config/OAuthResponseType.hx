package firebase_admin.lib.auth.auth_config;

/**
	The interface representing OIDC provider's response object for OAuth
	authorization flow.
	One of the following settings is required:
	<ul>
	<li>Set <code>code</code> to <code>true</code> for the code flow.</li>
	<li>Set <code>idToken</code> to <code>true</code> for the ID token flow.</li>
	</ul>
**/
typedef OAuthResponseType = {
	/**
		Whether ID token is returned from IdP's authorization endpoint.
	**/
	@:optional
	var idToken : Bool;
	/**
		Whether authorization code is returned from IdP's authorization endpoint.
	**/
	@:optional
	var code : Bool;
};