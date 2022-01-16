package firebase_admin.lib.messaging.messaging_api;

/**
	Represents options for features provided by the FCM SDK for iOS.
**/
typedef ApnsFcmOptions = {
	/**
		The label associated with the message's analytics data.
	**/
	@:optional
	var analyticsLabel : String;
	/**
		URL of an image to be displayed in the notification.
	**/
	@:optional
	var imageUrl : String;
};