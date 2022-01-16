package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing the server response from the {@link Messaging.sendToDeviceGroup}
	method.
	
	See
	{@link https://firebase.google.com/docs/cloud-messaging/send-message?authuser=0#send_messages_to_device_groups |
	Send messages to device groups} for code samples and detailed documentation.
**/
typedef MessagingDeviceGroupResponse = {
	/**
		The number of messages that could not be processed and resulted in an error.
	**/
	var successCount : Float;
	/**
		The number of messages that could not be processed and resulted in an error.
	**/
	var failureCount : Float;
	/**
		An array of registration tokens that failed to receive the message.
	**/
	var failedRegistrationTokens : Array<String>;
};