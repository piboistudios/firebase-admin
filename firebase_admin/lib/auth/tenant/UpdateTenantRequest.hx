package firebase_admin.lib.auth.tenant;

/**
	Interface representing the properties to update on the provided tenant.
**/
typedef UpdateTenantRequest = {
	/**
		The tenant display name.
	**/
	@:optional
	var displayName : String;
	/**
		The email sign in configuration.
	**/
	@:optional
	var emailSignInConfig : firebase_admin.lib.auth.auth_config.EmailSignInProviderConfig;
	/**
		Whether the anonymous provider is enabled.
	**/
	@:optional
	var anonymousSignInEnabled : Bool;
	/**
		The multi-factor auth configuration to update on the tenant.
	**/
	@:optional
	var multiFactorConfig : firebase_admin.lib.auth.auth_config.MultiFactorConfig;
	/**
		The updated map containing the test phone number / code pairs for the tenant.
		Passing null clears the previously save phone number / code pairs.
	**/
	@:optional
	var testPhoneNumbers : { };
};