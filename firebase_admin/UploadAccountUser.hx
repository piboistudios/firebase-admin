package firebase_admin;

/**
	UploadAccount endpoint request user interface.
**/
typedef UploadAccountUser = {
	var localId : String;
	@:optional
	var email : String;
	@:optional
	var emailVerified : Bool;
	@:optional
	var displayName : String;
	@:optional
	var disabled : Bool;
	@:optional
	var photoUrl : String;
	@:optional
	var phoneNumber : String;
	@:optional
	var providerUserInfo : Array<{
		var rawId : String;
		var providerId : String;
		@:optional
		var email : String;
		@:optional
		var displayName : String;
		@:optional
		var photoUrl : String;
	}>;
	@:optional
	var mfaInfo : Array<firebase_admin.lib.auth.user_import_builder.AuthFactorInfo>;
	@:optional
	var passwordHash : String;
	@:optional
	var salt : String;
	@:optional
	var lastLoginAt : Float;
	@:optional
	var createdAt : Float;
	@:optional
	var customAttributes : String;
	@:optional
	var tenantId : String;
};