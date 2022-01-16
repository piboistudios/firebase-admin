package firebase_admin.firestore;

/**
	Settings used to directly configure a `Firestore` instance.
**/
typedef Settings = {
	/**
		The project ID from the Google Developer's Console, e.g.
		'grape-spaceship-123'. We will also check the environment variable
		GCLOUD_PROJECT for your project ID.  Can be omitted in environments that
		support {@link https://cloud.google.com/docs/authentication Application
		Default Credentials}
	**/
	@:optional
	var projectId : String;
	/**
		The hostname to connect to.
	**/
	@:optional
	var host : String;
	/**
		The port to connect to.
	**/
	@:optional
	var port : Float;
	/**
		Local file containing the Service Account credentials as downloaded from
		the Google Developers Console. Can  be omitted in environments that
		support {@link https://cloud.google.com/docs/authentication Application
		Default Credentials}. To configure Firestore with custom credentials, use
		the `credentials` property to provide the `client_email` and
		`private_key` of your service account.
	**/
	@:optional
	var keyFilename : String;
	/**
		The 'client_email' and 'private_key' properties of the service account
		to use with your Firestore project. Can be omitted in environments that
		support {@link https://cloud.google.com/docs/authentication Application
		Default Credentials}. If your credentials are stored in a JSON file, you
		can specify a `keyFilename` instead.
	**/
	@:optional
	var credentials : {
		@:optional
		var client_email : String;
		@:optional
		var private_key : String;
	};
	/**
		Whether to use SSL when connecting.
	**/
	@:optional
	var ssl : Bool;
	/**
		The maximum number of idle GRPC channels to keep. A smaller number of idle
		channels reduces memory usage but increases request latency for clients
		with fluctuating request rates. If set to 0, shuts down all GRPC channels
		when the client becomes idle. Defaults to 1.
	**/
	@:optional
	var maxIdleChannels : Float;
	/**
		Whether to use `BigInt` for integer types when deserializing Firestore
		Documents. Regardless of magnitude, all integer values are returned as
		`BigInt` to match the precision of the Firestore backend. Floating point
		numbers continue to use JavaScript's `number` type.
	**/
	@:optional
	var useBigInt : Bool;
	/**
		Whether to skip nested properties that are set to `undefined` during
		object serialization. If set to `true`, these properties are skipped
		and not written to Firestore. If set `false` or omitted, the SDK throws
		an exception when it encounters properties of type `undefined`.
	**/
	@:optional
	var ignoreUndefinedProperties : Bool;
};