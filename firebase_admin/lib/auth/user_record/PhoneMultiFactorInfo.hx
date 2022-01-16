package firebase_admin.lib.auth.user_record;

/**
	Interface representing a phone specific user-enrolled second factor.
**/
@:jsRequire("firebase-admin/lib/auth/user-record", "PhoneMultiFactorInfo") extern class PhoneMultiFactorInfo extends MultiFactorInfo {
	function new();
	/**
		The phone number associated with a phone second factor.
	**/
	final phoneNumber : String;
	static var prototype : PhoneMultiFactorInfo;
}