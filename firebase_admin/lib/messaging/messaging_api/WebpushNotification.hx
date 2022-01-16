package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the WebPush-specific notification options that can be included in
	{@link WebpushConfig}. This supports most of the standard
	options as defined in the Web Notification
	{@link https://developer.mozilla.org/en-US/docs/Web/API/notification/Notification | specification}.
**/
typedef WebpushNotification = {
	/**
		Title text of the notification.
	**/
	@:optional
	var title : String;
	/**
		An array of notification actions representing the actions
		available to the user when the notification is presented.
	**/
	@:optional
	var actions : Array<{
		/**
			An action available to the user when the notification is presented
		**/
		var action : String;
		/**
			Optional icon for a notification action.
		**/
		@:optional
		var icon : String;
		/**
			Title of the notification action.
		**/
		var title : String;
	}>;
	/**
		URL of the image used to represent the notification when there is
		not enough space to display the notification itself.
	**/
	@:optional
	var badge : String;
	/**
		Body text of the notification.
	**/
	@:optional
	var body : String;
	/**
		Arbitrary data that you want associated with the notification.
		This can be of any data type.
	**/
	@:optional
	var data : Dynamic;
	/**
		The direction in which to display the notification. Must be one
		of `auto`, `ltr` or `rtl`.
	**/
	@:optional
	var dir : String;
	/**
		URL to the notification icon.
	**/
	@:optional
	var icon : String;
	/**
		URL of an image to be displayed in the notification.
	**/
	@:optional
	var image : String;
	/**
		The notification's language as a BCP 47 language tag.
	**/
	@:optional
	var lang : String;
	/**
		A boolean specifying whether the user should be notified after a
		new notification replaces an old one. Defaults to false.
	**/
	@:optional
	var renotify : Bool;
	/**
		Indicates that a notification should remain active until the user
		clicks or dismisses it, rather than closing automatically.
		Defaults to false.
	**/
	@:optional
	var requireInteraction : Bool;
	/**
		A boolean specifying whether the notification should be silent.
		Defaults to false.
	**/
	@:optional
	var silent : Bool;
	/**
		An identifying tag for the notification.
	**/
	@:optional
	var tag : String;
	/**
		Timestamp of the notification. Refer to
		https://developer.mozilla.org/en-US/docs/Web/API/notification/timestamp
		for details.
	**/
	@:optional
	var timestamp : Float;
	/**
		A vibration pattern for the device's vibration hardware to emit
		when the notification fires.
	**/
	@:optional
	var vibrate : ts.AnyOf2<Float, Array<Float>>;
};