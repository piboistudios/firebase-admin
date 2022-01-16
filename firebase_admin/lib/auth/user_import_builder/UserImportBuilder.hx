package firebase_admin.lib.auth.user_import_builder;

/**
	Class that provides a helper for building/validating uploadAccount requests and
	UserImportResult responses.
**/
@:jsRequire("firebase-admin/lib/auth/user-import-builder", "UserImportBuilder") extern class UserImportBuilder {
	function new(users:Array<UserImportRecord>, ?options:UserImportOptions, ?userRequestValidator:ValidatorFunction);
	private var requiresHashOptions : Dynamic;
	private var validatedUsers : Dynamic;
	private var validatedOptions : Dynamic;
	private var indexMap : Dynamic;
	private var userImportResultErrors : Dynamic;
	/**
		Returns the corresponding constructed uploadAccount request.
	**/
	function buildRequest():UploadAccountRequest;
	/**
		Populates the UserImportResult using the client side detected errors and the server
		side returned errors.
	**/
	function buildResponse(failedUploads:Array<{ var index : Float; var message : String; }>):UserImportResult;
	/**
		Validates and returns the hashing options of the uploadAccount request.
		Throws an error whenever an invalid or missing options is detected.
	**/
	private var populateOptions : Dynamic;
	/**
		Validates and returns the users list of the uploadAccount request.
		Whenever a user with an error is detected, the error is cached and will later be
		merged into the user import result. This allows the processing of valid users without
		failing early on the first error detected.
	**/
	private var populateUsers : Dynamic;
	static var prototype : UserImportBuilder;
}