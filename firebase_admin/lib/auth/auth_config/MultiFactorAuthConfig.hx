package firebase_admin.lib.auth.auth_config;

/**
	Defines the multi-factor config class used to convert client side MultiFactorConfig
	to a format that is understood by the Auth server.
**/
@:jsRequire("firebase-admin/lib/auth/auth-config", "MultiFactorAuthConfig") extern class MultiFactorAuthConfig {
	function new();
	/**
		The multi-factor config state.
	**/
	final state : MultiFactorConfigState;
	/**
		The list of identifiers for enabled second factors.
		Currently only ‘phone’ is supported.
	**/
	final factorIds : Array<String>;
	function toJSON():Dynamic;
	static var prototype : MultiFactorAuthConfig;
	/**
		Validates the MultiFactorConfig options object. Throws an error on failure.
	**/
	private static var validate : Dynamic;
}