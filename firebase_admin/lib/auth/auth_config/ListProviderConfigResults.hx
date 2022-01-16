package firebase_admin.lib.auth.auth_config;

/**
	The response interface for listing provider configs. This is only available
	when listing all identity providers' configurations via
	{@link BaseAuth.listProviderConfigs}.
**/
typedef ListProviderConfigResults = {
	/**
		The list of providers for the specified type in the current page.
	**/
	var providerConfigs : Array<AuthProviderConfig>;
	/**
		The next page token, if available.
	**/
	@:optional
	var pageToken : String;
};