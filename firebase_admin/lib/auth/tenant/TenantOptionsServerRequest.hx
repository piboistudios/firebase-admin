package firebase_admin.lib.auth.tenant;

/**
	The corresponding server side representation of a TenantOptions object.
**/
typedef TenantOptionsServerRequest = {
	@:optional
	var displayName : String;
	@:optional
	var enableAnonymousUser : Bool;
	@:optional
	var mfaConfig : firebase_admin.lib.auth.auth_config.MultiFactorAuthServerConfig;
	@:optional
	var testPhoneNumbers : { };
	@:optional
	var allowPasswordSignup : Bool;
	@:optional
	var enableEmailLinkSignin : Bool;
};