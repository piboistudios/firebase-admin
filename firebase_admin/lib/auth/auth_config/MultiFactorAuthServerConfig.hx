package firebase_admin.lib.auth.auth_config;

/**
	Server side multi-factor configuration.
**/
typedef MultiFactorAuthServerConfig = {
	@:optional
	var state : MultiFactorConfigState;
	@:optional
	var enabledProviders : Array<String>;
};