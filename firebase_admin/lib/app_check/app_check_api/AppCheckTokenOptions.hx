package firebase_admin.lib.app_check.app_check_api;

/**
	Interface representing App Check token options.
**/
typedef AppCheckTokenOptions = {
	/**
		The length of time, in milliseconds, for which the App Check token will
		be valid. This value must be between 30 minutes and 7 days, inclusive.
	**/
	@:optional
	var ttlMillis : Float;
};