package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the Android-specific notification options that can be included in
	{@link AndroidConfig}.
**/
typedef AndroidNotification = {
	/**
		Title of the Android notification. When provided, overrides the title set via
		`admin.messaging.Notification`.
	**/
	@:optional
	var title : String;
	/**
		Body of the Android notification. When provided, overrides the body set via
		`admin.messaging.Notification`.
	**/
	@:optional
	var body : String;
	/**
		Icon resource for the Android notification.
	**/
	@:optional
	var icon : String;
	/**
		Notification icon color in `#rrggbb` format.
	**/
	@:optional
	var color : String;
	/**
		File name of the sound to be played when the device receives the
		notification.
	**/
	@:optional
	var sound : String;
	/**
		Notification tag. This is an identifier used to replace existing
		notifications in the notification drawer. If not specified, each request
		creates a new notification.
	**/
	@:optional
	var tag : String;
	/**
		URL of an image to be displayed in the notification.
	**/
	@:optional
	var imageUrl : String;
	/**
		Action associated with a user click on the notification. If specified, an
		activity with a matching Intent Filter is launched when a user clicks on the
		notification.
	**/
	@:optional
	var clickAction : String;
	/**
		Key of the body string in the app's string resource to use to localize the
		body text.
	**/
	@:optional
	var bodyLocKey : String;
	/**
		An array of resource keys that will be used in place of the format
		specifiers in `bodyLocKey`.
	**/
	@:optional
	var bodyLocArgs : Array<String>;
	/**
		Key of the title string in the app's string resource to use to localize the
		title text.
	**/
	@:optional
	var titleLocKey : String;
	/**
		An array of resource keys that will be used in place of the format
		specifiers in `titleLocKey`.
	**/
	@:optional
	var titleLocArgs : Array<String>;
	/**
		The Android notification channel ID (new in Android O). The app must create
		a channel with this channel ID before any notification with this channel ID
		can be received. If you don't send this channel ID in the request, or if the
		channel ID provided has not yet been created by the app, FCM uses the channel
		ID specified in the app manifest.
	**/
	@:optional
	var channelId : String;
	/**
		Sets the "ticker" text, which is sent to accessibility services. Prior to
		API level 21 (Lollipop), sets the text that is displayed in the status bar
		when the notification first arrives.
	**/
	@:optional
	var ticker : String;
	/**
		When set to `false` or unset, the notification is automatically dismissed when
		the user clicks it in the panel. When set to `true`, the notification persists
		even when the user clicks it.
	**/
	@:optional
	var sticky : Bool;
	/**
		For notifications that inform users about events with an absolute time reference, sets
		the time that the event in the notification occurred. Notifications
		in the panel are sorted by this time.
	**/
	@:optional
	var eventTimestamp : js.lib.Date;
	/**
		Sets whether or not this notification is relevant only to the current device.
		Some notifications can be bridged to other devices for remote display, such as
		a Wear OS watch. This hint can be set to recommend this notification not be bridged.
		See {@link https://developer.android.com/training/wearables/notifications/bridger#existing-method-of-preventing-bridging |
		Wear OS guides}.
	**/
	@:optional
	var localOnly : Bool;
	/**
		Sets the relative priority for this notification. Low-priority notifications
		may be hidden from the user in certain situations. Note this priority differs
		from `AndroidMessagePriority`. This priority is processed by the client after
		the message has been delivered. Whereas `AndroidMessagePriority` is an FCM concept
		that controls when the message is delivered.
	**/
	@:optional
	var priority : String;
	/**
		Sets the vibration pattern to use. Pass in an array of milliseconds to
		turn the vibrator on or off. The first value indicates the duration to wait before
		turning the vibrator on. The next value indicates the duration to keep the
		vibrator on. Subsequent values alternate between duration to turn the vibrator
		off and to turn the vibrator on. If `vibrate_timings` is set and `default_vibrate_timings`
		is set to `true`, the default value is used instead of the user-specified `vibrate_timings`.
	**/
	@:optional
	var vibrateTimingsMillis : Array<Float>;
	/**
		If set to `true`, use the Android framework's default vibrate pattern for the
		notification. Default values are specified in {@link https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml |
		config.xml}. If `default_vibrate_timings` is set to `true` and `vibrate_timings` is also set,
		the default value is used instead of the user-specified `vibrate_timings`.
	**/
	@:optional
	var defaultVibrateTimings : Bool;
	/**
		If set to `true`, use the Android framework's default sound for the notification.
		Default values are specified in {@link https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml |
		config.xml}.
	**/
	@:optional
	var defaultSound : Bool;
	/**
		Settings to control the notification's LED blinking rate and color if LED is
		available on the device. The total blinking time is controlled by the OS.
	**/
	@:optional
	var lightSettings : LightSettings;
	/**
		If set to `true`, use the Android framework's default LED light settings
		for the notification. Default values are specified in {@link https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml |
		config.xml}.
		If `default_light_settings` is set to `true` and `light_settings` is also set,
		the user-specified `light_settings` is used instead of the default value.
	**/
	@:optional
	var defaultLightSettings : Bool;
	/**
		Sets the visibility of the notification. Must be either `private`, `public`,
		or `secret`. If unspecified, defaults to `private`.
	**/
	@:optional
	var visibility : String;
	/**
		Sets the number of items this notification represents. May be displayed as a
		badge count for Launchers that support badging. See {@link https://developer.android.com/training/notify-user/badges |
		NotificationBadge}.
		For example, this might be useful if you're using just one notification to
		represent multiple new messages but you want the count here to represent
		the number of total new messages. If zero or unspecified, systems
		that support badging use the default, which is to increment a number
		displayed on the long-press menu each time a new notification arrives.
	**/
	@:optional
	var notificationCount : Float;
};