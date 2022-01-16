package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the WebPush protocol options that can be included in an
	{@link Message}.
**/
typedef WebpushConfig = {
	/**
		A collection of WebPush headers. Header values must be strings.
		
		See {@link https://tools.ietf.org/html/rfc8030#section-5 | WebPush specification}
		for supported headers.
	**/
	@:optional
	var headers : { };
	/**
		A collection of data fields.
	**/
	@:optional
	var data : { };
	/**
		A WebPush notification payload to be included in the message.
	**/
	@:optional
	var notification : WebpushNotification;
	/**
		Options for features provided by the FCM SDK for Web.
	**/
	@:optional
	var fcmOptions : WebpushFcmOptions;
};