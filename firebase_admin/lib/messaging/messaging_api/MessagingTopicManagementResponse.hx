package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing the server response from the
	{@link Messaging.subscribeToTopic} and {@link Messaging.unsubscribeFromTopic}
	methods.
	
	See
	{@link https://firebase.google.com/docs/cloud-messaging/manage-topics |
	Manage topics from the server} for code samples and detailed documentation.
**/
typedef MessagingTopicManagementResponse = {
	/**
		The number of registration tokens that could not be subscribed to the topic
		and resulted in an error.
	**/
	var failureCount : Float;
	/**
		The number of registration tokens that were successfully subscribed to the
		topic.
	**/
	var successCount : Float;
	/**
		An array of errors corresponding to the provided registration token(s). The
		length of this array will be equal to {@link MessagingTopicManagementResponse.failureCount}.
	**/
	var errors : Array<firebase_admin.FirebaseArrayIndexError>;
};