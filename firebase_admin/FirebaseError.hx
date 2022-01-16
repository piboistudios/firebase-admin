package firebase_admin;

/**
	`FirebaseError` is a subclass of the standard JavaScript `Error` object. In
	addition to a message string and stack trace, it contains a string code.
**/
typedef FirebaseError = {
	/**
		Error codes are strings using the following format: `"service/string-code"`.
		Some examples include `"auth/invalid-uid"` and
		`"messaging/invalid-recipient"`.
		
		While the message for a given error can change, the code will remain the same
		between backward-compatible versions of the Firebase SDK.
	**/
	var code : String;
	/**
		An explanatory message for the error that just occurred.
		
		This message is designed to be helpful to you, the developer. Because
		it generally does not convey meaningful information to end users,
		this message should not be displayed in your application.
	**/
	var message : String;
	/**
		A string value containing the execution backtrace when the error originally
		occurred.
		
		This information can be useful for troubleshooting the cause of the error with
		{@link https://firebase.google.com/support | Firebase Support}.
	**/
	@:optional
	var stack : String;
	/**
		Returns a JSON-serializable object representation of this error.
	**/
	function toJSON():Dynamic;
};