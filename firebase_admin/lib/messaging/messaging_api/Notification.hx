package firebase_admin.lib.messaging.messaging_api;

/**
	A notification that can be included in {@link Message}.
**/
typedef Notification = {
	/**
		The title of the notification.
	**/
	@:optional
	var title : String;
	/**
		The notification body
	**/
	@:optional
	var body : String;
	/**
		URL of an image to be displayed in the notification.
	**/
	@:optional
	var imageUrl : String;
};