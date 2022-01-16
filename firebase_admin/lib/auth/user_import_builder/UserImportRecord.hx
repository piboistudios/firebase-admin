package firebase_admin.lib.auth.user_import_builder;

/**
	Interface representing a user to import to Firebase Auth via the
	{@link BaseAuth.importUsers} method.
**/
typedef UserImportRecord = {
	/**
		The user's `uid`.
	**/
	var uid : String;
	/**
		The user's primary email, if set.
	**/
	@:optional
	var email : String;
	/**
		Whether or not the user's primary email is verified.
	**/
	@:optional
	var emailVerified : Bool;
	/**
		The user's display name.
	**/
	@:optional
	var displayName : String;
	/**
		The user's primary phone number, if set.
	**/
	@:optional
	var phoneNumber : String;
	/**
		The user's photo URL.
	**/
	@:optional
	var photoURL : String;
	/**
		Whether or not the user is disabled: `true` for disabled; `false` for
		enabled.
	**/
	@:optional
	var disabled : Bool;
	/**
		Additional metadata about the user.
	**/
	@:optional
	var metadata : UserMetadataRequest;
	/**
		An array of providers (for example, Google, Facebook) linked to the user.
	**/
	@:optional
	var providerData : Array<UserProviderRequest>;
	/**
		The user's custom claims object if available, typically used to define
		user roles and propagated to an authenticated user's ID token.
	**/
	@:optional
	var customClaims : { };
	/**
		The buffer of bytes representing the user's hashed password.
		When a user is to be imported with a password hash,
		{@link UserImportOptions} are required to be
		specified to identify the hashing algorithm used to generate this hash.
	**/
	@:optional
	var passwordHash : global.Buffer;
	/**
		The buffer of bytes representing the user's password salt.
	**/
	@:optional
	var passwordSalt : global.Buffer;
	/**
		The identifier of the tenant where user is to be imported to.
		When not provided in an `admin.auth.Auth` context, the user is uploaded to
		the default parent project.
		When not provided in an `admin.auth.TenantAwareAuth` context, the user is uploaded
		to the tenant corresponding to that `TenantAwareAuth` instance's tenant ID.
	**/
	@:optional
	var tenantId : String;
	/**
		The user's multi-factor related properties.
	**/
	@:optional
	var multiFactor : firebase_admin.lib.auth.auth_config.MultiFactorUpdateSettings;
};