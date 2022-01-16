package firebase_admin;

/**
	Available options to pass to {@link firebase-admin.app#initializeApp}.
**/
typedef AppOptions = {
	/**
		A {@link firebase-admin.app#Credential} object used to
		authenticate the Admin SDK.
		
		See {@link https://firebase.google.com/docs/admin/setup#initialize_the_sdk | Initialize the SDK}
		for detailed documentation and code samples.
	**/
	@:optional
	var credential : firebase_admin.lib.app.index.Credential;
	/**
		The object to use as the {@link https://firebase.google.com/docs/reference/security/database/#auth | auth}
		variable in your Realtime Database Rules when the Admin SDK reads from or
		writes to the Realtime Database. This allows you to downscope the Admin SDK
		from its default full read and write privileges.
		
		You can pass `null` to act as an unauthenticated client.
		
		See
		{@link https://firebase.google.com/docs/database/admin/start#authenticate-with-limited-privileges |
		Authenticate with limited privileges}
		for detailed documentation and code samples.
	**/
	@:optional
	var databaseAuthVariableOverride : Dynamic;
	/**
		The URL of the Realtime Database from which to read and write data.
	**/
	@:optional
	var databaseURL : String;
	/**
		The ID of the service account to be used for signing custom tokens. This
		can be found in the `client_email` field of a service account JSON file.
	**/
	@:optional
	var serviceAccountId : String;
	/**
		The name of the Google Cloud Storage bucket used for storing application data.
		Use only the bucket name without any prefixes or additions (do *not* prefix
		the name with "gs://").
	**/
	@:optional
	var storageBucket : String;
	/**
		The ID of the Google Cloud project associated with the App.
	**/
	@:optional
	var projectId : String;
	/**
		An {@link https://nodejs.org/api/http.html#http_class_http_agent | HTTP Agent}
		to be used when making outgoing HTTP calls. This Agent instance is used
		by all services that make REST calls (e.g. `auth`, `messaging`,
		`projectManagement`).
		
		Realtime Database and Firestore use other means of communicating with
		the backend servers, so they do not use this HTTP Agent. `Credential`
		instances also do not use this HTTP Agent, but instead support
		specifying an HTTP Agent in the corresponding factory methods.
	**/
	@:optional
	var httpAgent : node.http.Agent;
};