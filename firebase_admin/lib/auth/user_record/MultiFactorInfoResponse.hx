package firebase_admin.lib.auth.user_record;

typedef MultiFactorInfoResponse = {
	var mfaEnrollmentId : String;
	@:optional
	var displayName : String;
	@:optional
	var phoneInfo : String;
	@:optional
	var enrolledAt : String;
};