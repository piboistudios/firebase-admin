package firebase_admin.lib.messaging.messaging_api;

typedef MessagingDeviceResult = {
	/**
		The error that occurred when processing the message for the recipient.
	**/
	@:optional
	var error : firebase_admin.FirebaseError;
	/**
		A unique ID for the successfully processed message.
	**/
	@:optional
	var messageId : String;
	/**
		The canonical registration token for the client app that the message was
		processed and sent to. You should use this value as the registration token
		for future requests. Otherwise, future messages might be rejected.
	**/
	@:optional
	var canonicalRegistrationToken : String;
};