package firebase_admin.lib.auth.user_import_builder;

/**
	Interface representing an Auth second factor in Auth server format.
**/
typedef AuthFactorInfo = {
	@:optional
	var mfaEnrollmentId : String;
	@:optional
	var displayName : String;
	@:optional
	var phoneInfo : String;
	@:optional
	var enrolledAt : String;
};