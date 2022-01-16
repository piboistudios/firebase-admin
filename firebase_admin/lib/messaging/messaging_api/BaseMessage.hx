package firebase_admin.lib.messaging.messaging_api;

typedef BaseMessage = {
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