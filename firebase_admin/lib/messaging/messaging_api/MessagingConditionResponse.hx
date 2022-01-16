package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing the server response from the legacy
	{@link Messaging.sendToCondition} method.
	
	See
	{@link https://firebase.google.com/docs/cloud-messaging/admin/send-messages#send_to_a_condition |
	Send to a condition} for code samples and detailed documentation.
**/
typedef MessagingConditionResponse = {
	/**
		The message ID for a successfully received request which FCM will attempt to
		deliver to all subscribed devices.
	**/
	var messageId : Float;
};