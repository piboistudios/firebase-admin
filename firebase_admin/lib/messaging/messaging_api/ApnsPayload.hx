package firebase_admin.lib.messaging.messaging_api;

/**
	Represents the payload of an APNs message. Mainly consists of the `aps`
	dictionary. But may also contain other arbitrary custom keys.
**/
typedef ApnsPayload = {
	/**
		The `aps` dictionary to be included in the message.
	**/
	var aps : Aps;
};