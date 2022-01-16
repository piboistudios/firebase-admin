package firebase_admin.lib.auth.auth_config;

/**
	Interface representing a phone specific user-enrolled second factor for a
	`CreateRequest`.
**/
typedef CreatePhoneMultiFactorInfoRequest = {
	/**
		The phone number associated with a phone second factor.
	**/
	var phoneNumber : String;
	/**
		The optional display name for an enrolled second factor.
	**/
	@:optional
	var displayName : String;
	/**
		The type identifier of the second factor. For SMS second factors, this is `phone`.
	**/
	var factorId : String;
};