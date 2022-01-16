package firebase_admin.lib.auth.auth_config;

/**
	Interface representing base properties of a user-enrolled second factor for a
	`CreateRequest`.
**/
typedef BaseCreateMultiFactorInfoRequest = {
	/**
		The optional display name for an enrolled second factor.
	**/
	@:optional
	var displayName : String;
	/**
		The type identifier of the second factor. For SMS second factors, this is `phone`.
	**/
	var factorId : String;
};