package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing the status of an individual message that was sent as
	part of a batch request.
**/
typedef SendResponse = {
	/**
		A boolean indicating if the message was successfully handed off to FCM or
		not. When true, the `messageId` attribute is guaranteed to be set. When
		false, the `error` attribute is guaranteed to be set.
	**/
	var success : Bool;
	/**
		A unique message ID string, if the message was handed off to FCM for
		delivery.
	**/
	@:optional
	var messageId : String;
	/**
		An error, if the message was not handed off to FCM successfully.
	**/
	@:optional
	var error : firebase_admin.FirebaseError;
};