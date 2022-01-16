package firebase_admin.lib.app_check.app_check_api;

/**
	Interface representing a verified App Check token response.
**/
typedef VerifyAppCheckTokenResponse = {
	/**
		The App ID corresponding to the App the App Check token belonged to.
	**/
	var appId : String;
	/**
		The decoded Firebase App Check token.
	**/
	var token : DecodedAppCheckToken;
};