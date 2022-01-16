package firebase_admin.lib.auth.user_record;

typedef GetAccountInfoUserResponse = {
	var localId : String;
	@:optional
	var email : String;
	@:optional
	var emailVerified : Bool;
	@:optional
	var phoneNumber : String;
	@:optional
	var displayName : String;
	@:optional
	var photoUrl : String;
	@:optional
	var disabled : Bool;
	@:optional
	var passwordHash : String;
	@:optional
	var salt : String;
	@:optional
	var customAttributes : String;
	@:optional
	var validSince : String;
	@:optional
	var tenantId : String;
	@:optional
	var providerUserInfo : Array<ProviderUserInfoResponse>;
	@:optional
	var mfaInfo : Array<MultiFactorInfoResponse>;
	@:optional
	var createdAt : String;
	@:optional
	var lastLoginAt : String;
	@:optional
	var lastRefreshAt : String;
};