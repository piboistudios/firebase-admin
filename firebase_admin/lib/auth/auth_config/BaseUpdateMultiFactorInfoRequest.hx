package firebase_admin.lib.auth.auth_config;

/**
	Interface representing common properties of a user-enrolled second factor
	for an `UpdateRequest`.
**/
typedef BaseUpdateMultiFactorInfoRequest = {
	/**
		The ID of the enrolled second factor. This ID is unique to the user. When not provided,
		a new one is provisioned by the Auth server.
	**/
	@:optional
	var uid : String;
	/**
		The optional display name for an enrolled second factor.
	**/
	@:optional
	var displayName : String;
	/**
		The optional date the second factor was enrolled, formatted as a UTC string.
	**/
	@:optional
	var enrollmentTime : String;
	/**
		The type identifier of the second factor. For SMS second factors, this is `phone`.
	**/
	var factorId : String;
};