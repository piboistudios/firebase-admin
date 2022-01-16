package firebase_admin.lib.auth.user_record;

/**
	The multi-factor related user settings.
**/
@:jsRequire("firebase-admin/lib/auth/user-record", "MultiFactorSettings") extern class MultiFactorSettings {
	function new();
	/**
		List of second factors enrolled with the current user.
		Currently only phone second factors are supported.
	**/
	var enrolledFactors : Array<MultiFactorInfo>;
	/**
		Returns a JSON-serializable representation of this multi-factor object.
	**/
	function toJSON():Dynamic;
	static var prototype : MultiFactorSettings;
}