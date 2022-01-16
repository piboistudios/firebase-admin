package firebase_admin.lib.auth.user_record;

/**
	Interface representing the common properties of a user-enrolled second factor.
**/
@:jsRequire("firebase-admin/lib/auth/user-record", "MultiFactorInfo") extern class MultiFactorInfo {
	function new();
	/**
		The ID of the enrolled second factor. This ID is unique to the user.
	**/
	final uid : String;
	/**
		The optional display name of the enrolled second factor.
	**/
	@:optional
	final displayName : String;
	/**
		The type identifier of the second factor. For SMS second factors, this is `phone`.
	**/
	final factorId : String;
	/**
		The optional date the second factor was enrolled, formatted as a UTC string.
	**/
	@:optional
	final enrollmentTime : String;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Dynamic;
	/**
		Initializes the MultiFactorInfo object using the provided server response.
	**/
	private var initFromServerResponse : Dynamic;
	static var prototype : MultiFactorInfo;
}