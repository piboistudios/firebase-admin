package firebase_admin.lib.auth.auth_config;

/**
	Interface representing a multi-factor configuration.
	This can be used to define whether multi-factor authentication is enabled
	or disabled and the list of second factor challenges that are supported.
**/
typedef MultiFactorConfig = {
	/**
		The multi-factor config state.
	**/
	var state : MultiFactorConfigState;
	/**
		The list of identifiers for enabled second factors.
		Currently only ‘phone’ is supported.
	**/
	@:optional
	var factorIds : Array<String>;
};