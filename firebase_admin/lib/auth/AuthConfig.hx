package firebase_admin.lib.auth;

@:jsRequire("firebase-admin/lib/auth/auth-config") @valueModuleOnly extern class AuthConfig {
	/**
		Validates the provided map of test phone number / code pairs.
	**/
	static function validateTestPhoneNumbers(testPhoneNumbers:{ }):Void;
	/**
		A maximum of 10 test phone number / code pairs can be configured.
	**/
	static final MAXIMUM_TEST_PHONE_NUMBERS : Int;
}