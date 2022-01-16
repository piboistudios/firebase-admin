package firebase_admin.lib.auth.tenant;

/**
	The tenant server response interface.
**/
typedef TenantServerResponse = {
	var name : String;
	@:optional
	var displayName : String;
	@:optional
	var allowPasswordSignup : Bool;
	@:optional
	var enableEmailLinkSignin : Bool;
	@:optional
	var enableAnonymousUser : Bool;
	@:optional
	var mfaConfig : firebase_admin.lib.auth.auth_config.MultiFactorAuthServerConfig;
	@:optional
	var testPhoneNumbers : { };
};