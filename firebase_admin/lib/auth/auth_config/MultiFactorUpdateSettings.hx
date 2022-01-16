package firebase_admin.lib.auth.auth_config;

/**
	The multi-factor related user settings for update operations.
**/
typedef MultiFactorUpdateSettings = {
	/**
		The updated list of enrolled second factors. The provided list overwrites the user's
		existing list of second factors.
		When null is passed, all of the user's existing second factors are removed.
	**/
	var enrolledFactors : Null<Array<UpdatePhoneMultiFactorInfoRequest>>;
};