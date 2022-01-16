package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the APNs-specific options that can be included in an
	{@link Message}. Refer to
	{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CommunicatingwithAPNs.html |
	Apple documentation} for various headers and payload fields supported by APNs.
**/
typedef ApnsConfig = {
	/**
		A collection of APNs headers. Header values must be strings.
	**/
	@:optional
	var headers : { };
	/**
		An APNs payload to be included in the message.
	**/
	@:optional
	var payload : ApnsPayload;
	/**
		Options for features provided by the FCM SDK for iOS.
	**/
	@:optional
	var fcmOptions : ApnsFcmOptions;
};