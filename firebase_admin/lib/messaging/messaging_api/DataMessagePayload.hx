package firebase_admin.lib.messaging.messaging_api;

/**
	Interface representing an FCM legacy API data message payload. Data
	messages let developers send up to 4KB of custom key-value pairs. The
	keys and values must both be strings. Keys can be any custom string,
	except for the following reserved strings:
	
	<ul>
	   <li><code>from</code></li>
	   <li>Anything starting with <code>google.</code></li>
	</ul>
	
	See {@link https://firebase.google.com/docs/cloud-messaging/send-message | Build send requests}
	for code samples and detailed documentation.
**/
typedef DataMessagePayload = { };