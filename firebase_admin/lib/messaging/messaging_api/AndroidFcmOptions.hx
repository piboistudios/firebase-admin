package firebase_admin.lib.messaging.messaging_api;

/**
	Represents options for features provided by the FCM SDK for Android.
**/
typedef AndroidFcmOptions = {
	/**
		The label associated with the message's analytics data.
	**/
	@:optional
	var analyticsLabel : String;
};