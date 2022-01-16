package firebase_admin.lib.messaging.messaging_api;

/**
	Payload for the {@link Messaging.sendMulticast} method. The payload contains all the fields
	in the BaseMessage type, and a list of tokens.
**/
typedef MulticastMessage = {
	var tokens : Array<String>;
	@:optional
	var data : { };
	@:optional
	var notification : Notification;
	@:optional
	var android : AndroidConfig;
	@:optional
	var webpush : WebpushConfig;
	@:optional
	var apns : ApnsConfig;
	@:optional
	var fcmOptions : FcmOptions;
};