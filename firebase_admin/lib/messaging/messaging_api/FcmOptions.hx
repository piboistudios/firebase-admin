package firebase_admin.lib.messaging.messaging_api;

/**
	Represents platform-independent options for features provided by the FCM SDKs.
**/
typedef FcmOptions = {
	/**
		The label associated with the message's analytics data.
	**/
	@:optional
	var analyticsLabel : String;
};