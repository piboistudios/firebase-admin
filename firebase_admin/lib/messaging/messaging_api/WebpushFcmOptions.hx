package firebase_admin.lib.messaging.messaging_api;

/**
	Represents options for features provided by the FCM SDK for Web
	(which are not part of the Webpush standard).
**/
typedef WebpushFcmOptions = {
	/**
		The link to open when the user clicks on the notification.
		For all URL values, HTTPS is required.
	**/
	@:optional
	var link : String;
};