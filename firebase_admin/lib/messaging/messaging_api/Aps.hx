package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the {@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html |
	aps dictionary} that is part of APNs messages.
**/
typedef Aps = {
	/**
		Alert to be included in the message. This may be a string or an object of
		type `admin.messaging.ApsAlert`.
	**/
	@:optional
	var alert : ts.AnyOf2<String, ApsAlert>;
	/**
		Badge to be displayed with the message. Set to 0 to remove the badge. When
		not specified, the badge will remain unchanged.
	**/
	@:optional
	var badge : Float;
	/**
		Sound to be played with the message.
	**/
	@:optional
	var sound : ts.AnyOf2<String, CriticalSound>;
	/**
		Specifies whether to configure a background update notification.
	**/
	@:optional
	var contentAvailable : Bool;
	/**
		Specifies whether to set the `mutable-content` property on the message
		so the clients can modify the notification via app extensions.
	**/
	@:optional
	var mutableContent : Bool;
	/**
		Type of the notification.
	**/
	@:optional
	var category : String;
	/**
		An app-specific identifier for grouping notifications.
	**/
	@:optional
	var threadId : String;
};