package firebase_admin.lib.auth.auth_config;

/**
	The multi-factor related user settings for create operations.
**/
typedef MultiFactorCreateSettings = {
	/**
		The created user's list of enrolled second factors.
	**/
	var enrolledFactors : Array<CreatePhoneMultiFactorInfoRequest>;
};