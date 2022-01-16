package firebase_admin.lib.messaging.messaging;

/**
	Messaging service bound to the provided app.
**/
@:jsRequire("firebase-admin/lib/messaging/messaging", "Messaging") extern class Messaging {
	function new();
	private var urlPath : Dynamic;
	private final appInternal : Dynamic;
	private final messagingRequestHandler : Dynamic;
	/**
		The {@link firebase-admin.app#App} associated with the current `Messaging` service
		instance.
	**/
	final app : firebase_admin.lib.app.core.App;
	/**
		Sends the given message via FCM.
	**/
	function send(message:firebase_admin.lib.messaging.messaging_api.Message, ?dryRun:Bool):js.lib.Promise<String>;
	/**
		Sends all the messages in the given array via Firebase Cloud Messaging.
		Employs batching to send the entire list as a single RPC call. Compared
		to the `send()` method, this method is a significantly more efficient way
		to send multiple messages.
		
		The responses list obtained from the return value
		corresponds to the order of tokens in the `MulticastMessage`. An error
		from this method indicates a total failure -- i.e. none of the messages in
		the list could be sent. Partial failures are indicated by a `BatchResponse`
		return value.
	**/
	function sendAll(messages:Array<firebase_admin.lib.messaging.messaging_api.Message>, ?dryRun:Bool):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.BatchResponse>;
	/**
		Sends the given multicast message to all the FCM registration tokens
		specified in it.
		
		This method uses the `sendAll()` API under the hood to send the given
		message to all the target recipients. The responses list obtained from the
		return value corresponds to the order of tokens in the `MulticastMessage`.
		An error from this method indicates a total failure -- i.e. the message was
		not sent to any of the tokens in the list. Partial failures are indicated by
		a `BatchResponse` return value.
	**/
	function sendMulticast(message:firebase_admin.lib.messaging.messaging_api.MulticastMessage, ?dryRun:Bool):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.BatchResponse>;
	/**
		Sends an FCM message to a single device corresponding to the provided
		registration token.
		
		See {@link https://firebase.google.com/docs/cloud-messaging/admin/legacy-fcm#send_to_individual_devices |
		Send to individual devices}
		for code samples and detailed documentation. Takes either a
		`registrationToken` to send to a single device or a
		`registrationTokens` parameter containing an array of tokens to send
		to multiple devices.
	**/
	function sendToDevice(registrationTokenOrTokens:ts.AnyOf2<String, Array<String>>, payload:firebase_admin.lib.messaging.messaging_api.MessagingPayload, ?options:firebase_admin.lib.messaging.messaging_api.MessagingOptions):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.MessagingDevicesResponse>;
	/**
		Sends an FCM message to a device group corresponding to the provided
		notification key.
		
		See {@link https://firebase.google.com/docs/cloud-messaging/admin/legacy-fcm#send_to_a_device_group |
		Send to a device group} for code samples and detailed documentation.
	**/
	function sendToDeviceGroup(notificationKey:String, payload:firebase_admin.lib.messaging.messaging_api.MessagingPayload, ?options:firebase_admin.lib.messaging.messaging_api.MessagingOptions):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.MessagingDeviceGroupResponse>;
	/**
		Sends an FCM message to a topic.
		
		See {@link https://firebase.google.com/docs/cloud-messaging/admin/legacy-fcm#send_to_a_topic |
		Send to a topic} for code samples and detailed documentation.
	**/
	function sendToTopic(topic:String, payload:firebase_admin.lib.messaging.messaging_api.MessagingPayload, ?options:firebase_admin.lib.messaging.messaging_api.MessagingOptions):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.MessagingTopicResponse>;
	/**
		Sends an FCM message to a condition.
		
		See {@link https://firebase.google.com/docs/cloud-messaging/admin/legacy-fcm#send_to_a_condition |
		Send to a condition}
		for code samples and detailed documentation.
	**/
	function sendToCondition(condition:String, payload:firebase_admin.lib.messaging.messaging_api.MessagingPayload, ?options:firebase_admin.lib.messaging.messaging_api.MessagingOptions):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.MessagingConditionResponse>;
	/**
		Subscribes a device to an FCM topic.
		
		See {@link https://firebase.google.com/docs/cloud-messaging/manage-topics#suscribe_and_unsubscribe_using_the |
		Subscribe to a topic}
		for code samples and detailed documentation. Optionally, you can provide an
		array of tokens to subscribe multiple devices.
	**/
	function subscribeToTopic(registrationTokenOrTokens:ts.AnyOf2<String, Array<String>>, topic:String):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.MessagingTopicManagementResponse>;
	/**
		Unsubscribes a device from an FCM topic.
		
		See {@link https://firebase.google.com/docs/cloud-messaging/admin/manage-topic-subscriptions#unsubscribe_from_a_topic |
		Unsubscribe from a topic}
		for code samples and detailed documentation.  Optionally, you can provide an
		array of tokens to unsubscribe multiple devices.
	**/
	function unsubscribeFromTopic(registrationTokenOrTokens:ts.AnyOf2<String, Array<String>>, topic:String):js.lib.Promise<firebase_admin.lib.messaging.messaging_api.MessagingTopicManagementResponse>;
	private var getUrlPath : Dynamic;
	/**
		Helper method which sends and handles topic subscription management requests.
	**/
	private var sendTopicManagementRequest : Dynamic;
	/**
		Validates the types of the messaging payload and options. If invalid, an error will be thrown.
	**/
	private var validateMessagingPayloadAndOptionsTypes : Dynamic;
	/**
		Validates the messaging payload. If invalid, an error will be thrown.
	**/
	private var validateMessagingPayload : Dynamic;
	/**
		Validates the messaging options. If invalid, an error will be thrown.
	**/
	private var validateMessagingOptions : Dynamic;
	/**
		Validates the type of the provided registration token(s). If invalid, an error will be thrown.
	**/
	private var validateRegistrationTokensType : Dynamic;
	/**
		Validates the provided registration tokens. If invalid, an error will be thrown.
	**/
	private var validateRegistrationTokens : Dynamic;
	/**
		Validates the type of the provided topic. If invalid, an error will be thrown.
	**/
	private var validateTopicType : Dynamic;
	/**
		Validates the provided topic. If invalid, an error will be thrown.
	**/
	private var validateTopic : Dynamic;
	/**
		Normalizes the provided topic name by prepending it with '/topics/', if necessary.
	**/
	private var normalizeTopic : Dynamic;
	static var prototype : Messaging;
}