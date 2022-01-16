package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing a Firebase Cloud Messaging message payload. One or
	both of the `data` and `notification` keys are required.
	
	See {@link https://firebase.google.com/docs/cloud-messaging/send-message | Build send requests}
	for code samples and detailed documentation.
**/
typedef MessagingPayload = {
	/**
		The data message payload.
	**/
	@:optional
	var data : DataMessagePayload;
	/**
		The notification message payload.
	**/
	@:optional
	var notification : NotificationMessagePayload;
};