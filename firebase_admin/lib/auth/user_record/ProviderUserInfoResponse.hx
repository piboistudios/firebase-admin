package firebase_admin.lib.auth.user_record;

typedef ProviderUserInfoResponse = {
	var rawId : String;
	@:optional
	var displayName : String;
	@:optional
	var email : String;
	@:optional
	var photoUrl : String;
	@:optional
	var phoneNumber : String;
	var providerId : String;
	@:optional
	var federatedId : String;
};