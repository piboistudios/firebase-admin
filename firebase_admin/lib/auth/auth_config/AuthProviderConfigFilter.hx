package firebase_admin.lib.auth.auth_config;

/**
	The filter interface used for listing provider configurations. This is used
	when specifying how to list configured identity providers via
	{@link BaseAuth.listProviderConfigs}.
**/
typedef AuthProviderConfigFilter = {
	/**
		The Auth provider configuration filter. This can be either `saml` or `oidc`.
		The former is used to look up SAML providers only, while the latter is used
		for OIDC providers.
	**/
	var type : String;
	/**
		The maximum number of results to return per page. The default and maximum is
		100.
	**/
	@:optional
	var maxResults : Float;
	/**
		The next page token. When not specified, the lookup starts from the beginning
		of the list.
	**/
	@:optional
	var pageToken : String;
};