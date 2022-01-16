package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing the status of a message sent to an individual device
	via the FCM legacy APIs.
	
	See
	{@link https://firebase.google.com/docs/cloud-messaging/admin/send-messages#send_to_individual_devices |
	Send to individual devices} for code samples and detailed documentation.
**/
typedef MessagingDevicesResponse = {
	var canonicalRegistrationTokenCount : Float;
	var failureCount : Float;
	var multicastId : Float;
	var results : Array<MessagingDeviceResult>;
	var successCount : Float;
};