package firebase_admin.lib.app_check.app_check_api;

/**
	Interface representing an App Check token.
**/
typedef AppCheckToken = {
	/**
		The Firebase App Check token.
	**/
	var token : String;
	/**
		The time-to-live duration of the token in milliseconds.
	**/
	var ttlMillis : Float;
};