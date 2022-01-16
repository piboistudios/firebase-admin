package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the Android-specific options that can be included in an
	{@link Message}.
**/
typedef AndroidConfig = {
	/**
		Collapse key for the message. Collapse key serves as an identifier for a
		group of messages that can be collapsed, so that only the last message gets
		sent when delivery can be resumed. A maximum of four different collapse keys
		may be active at any given time.
	**/
	@:optional
	var collapseKey : String;
	/**
		Priority of the message. Must be either `normal` or `high`.
	**/
	@:optional
	var priority : String;
	/**
		Time-to-live duration of the message in milliseconds.
	**/
	@:optional
	var ttl : Float;
	/**
		Package name of the application where the registration tokens must match
		in order to receive the message.
	**/
	@:optional
	var restrictedPackageName : String;
	/**
		A collection of data fields to be included in the message. All values must
		be strings. When provided, overrides any data fields set on the top-level
		{@link Message}.
	**/
	@:optional
	var data : { };
	/**
		Android notification to be included in the message.
	**/
	@:optional
	var notification : AndroidNotification;
	/**
		Options for features provided by the FCM SDK for Android.
	**/
	@:optional
	var fcmOptions : AndroidFcmOptions;
};