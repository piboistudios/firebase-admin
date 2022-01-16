package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing the server response from the
	{@link Messaging.sendAll} and {@link Messaging.sendMulticast} methods.
**/
typedef BatchResponse = {
	/**
		An array of responses, each corresponding to a message.
	**/
	var responses : Array<SendResponse>;
	/**
		The number of messages that were successfully handed off for sending.
	**/
	var successCount : Float;
	/**
		The number of messages that resulted in errors when sending.
	**/
	var failureCount : Float;
};