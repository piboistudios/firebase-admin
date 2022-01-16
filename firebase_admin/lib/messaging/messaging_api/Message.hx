package firebase_admin.lib.messaging.messaging_api;

/**
	Payload for the {@link Messaging.send} operation. The payload contains all the fields
	in the BaseMessage type, and exactly one of token, topic or condition.
**/
typedef Message = ts.AnyOf3<ConditionMessage, TokenMessage, TopicMessage>;