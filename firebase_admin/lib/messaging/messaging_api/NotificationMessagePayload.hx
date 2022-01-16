package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing an FCM legacy API notification message payload.
	Notification messages let developers send up to 4KB of predefined
	key-value pairs. Accepted keys are outlined below.
	
	See {@link https://firebase.google.com/docs/cloud-messaging/send-message | Build send requests}
	for code samples and detailed documentation.
**/
typedef NotificationMessagePayload = {
	/**
		Identifier used to replace existing notifications in the notification drawer.
		
		If not specified, each request creates a new notification.
		
		If specified and a notification with the same tag is already being shown,
		the new notification replaces the existing one in the notification drawer.
		
		**Platforms:** Android
	**/
	@:optional
	var tag : String;
	/**
		The notification's body text.
		
		**Platforms:** iOS, Android, Web
	**/
	@:optional
	var body : String;
	/**
		The notification's icon.
		
		**Android:** Sets the notification icon to `myicon` for drawable resource
		`myicon`. If you don't send this key in the request, FCM displays the
		launcher icon specified in your app manifest.
		
		**Web:** The URL to use for the notification's icon.
		
		**Platforms:** Android, Web
	**/
	@:optional
	var icon : String;
	/**
		The value of the badge on the home screen app icon.
		
		If not specified, the badge is not changed.
		
		If set to `0`, the badge is removed.
		
		**Platforms:** iOS
	**/
	@:optional
	var badge : String;
	/**
		The notification icon's color, expressed in `#rrggbb` format.
		
		**Platforms:** Android
	**/
	@:optional
	var color : String;
	/**
		The sound to be played when the device receives a notification. Supports
		"default" for the default notification sound of the device or the filename of a
		sound resource bundled in the app.
		Sound files must reside in `/res/raw/`.
		
		**Platforms:** Android
	**/
	@:optional
	var sound : String;
	/**
		The notification's title.
		
		**Platforms:** iOS, Android, Web
	**/
	@:optional
	var title : String;
	/**
		The key to the body string in the app's string resources to use to localize
		the body text to the user's current localization.
		
		**iOS:** Corresponds to `loc-key` in the APNs payload. See
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html |
		Payload Key Reference} and
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9 |
		Localizing the Content of Your Remote Notifications} for more information.
		
		**Android:** See
		{@link http://developer.android.com/guide/topics/resources/string-resource.html | String Resources}
		for more information.
		
		**Platforms:** iOS, Android
	**/
	@:optional
	var bodyLocKey : String;
	/**
		Variable string values to be used in place of the format specifiers in
		`body_loc_key` to use to localize the body text to the user's current
		localization.
		
		The value should be a stringified JSON array.
		
		**iOS:** Corresponds to `loc-args` in the APNs payload. See
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html |
		Payload Key Reference} and
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9 |
		Localizing the Content of Your Remote Notifications} for more information.
		
		**Android:** See
		{@link http://developer.android.com/guide/topics/resources/string-resource.html#FormattingAndStyling |
		Formatting and Styling} for more information.
		
		**Platforms:** iOS, Android
	**/
	@:optional
	var bodyLocArgs : String;
	/**
		Action associated with a user click on the notification. If specified, an
		activity with a matching Intent Filter is launched when a user clicks on the
		notification.
		
		   * **Platforms:** Android
	**/
	@:optional
	var clickAction : String;
	/**
		The key to the title string in the app's string resources to use to localize
		the title text to the user's current localization.
		
		**iOS:** Corresponds to `title-loc-key` in the APNs payload. See
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html |
		Payload Key Reference} and
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9 |
		Localizing the Content of Your Remote Notifications} for more information.
		
		**Android:** See
		{@link http://developer.android.com/guide/topics/resources/string-resource.html | String Resources}
		for more information.
		
		**Platforms:** iOS, Android
	**/
	@:optional
	var titleLocKey : String;
	/**
		Variable string values to be used in place of the format specifiers in
		`title_loc_key` to use to localize the title text to the user's current
		localization.
		
		The value should be a stringified JSON array.
		
		**iOS:** Corresponds to `title-loc-args` in the APNs payload. See
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html |
		Payload Key Reference} and
		{@link https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9 |
		Localizing the Content of Your Remote Notifications} for more information.
		
		**Android:** See
		{@link http://developer.android.com/guide/topics/resources/string-resource.html#FormattingAndStyling |
		Formatting and Styling} for more information.
		
		**Platforms:** iOS, Android
	**/
	@:optional
	var titleLocArgs : String;
};