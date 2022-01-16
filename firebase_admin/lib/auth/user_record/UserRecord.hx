package firebase_admin.lib.auth.user_record;

/**
	Represents a user.
**/
@:jsRequire("firebase-admin/lib/auth/user-record", "UserRecord") extern class UserRecord {
	function new();
	/**
		The user's `uid`.
	**/
	final uid : String;
	/**
		The user's primary email, if set.
	**/
	@:optional
	final email : String;
	/**
		Whether or not the user's primary email is verified.
	**/
	final emailVerified : Bool;
	/**
		The user's display name.
	**/
	@:optional
	final displayName : String;
	/**
		The user's photo URL.
	**/
	@:optional
	final photoURL : String;
	/**
		The user's primary phone number, if set.
	**/
	@:optional
	final phoneNumber : String;
	/**
		Whether or not the user is disabled: `true` for disabled; `false` for
		enabled.
	**/
	final disabled : Bool;
	/**
		Additional metadata about the user.
	**/
	final metadata : UserMetadata;
	/**
		An array of providers (for example, Google, Facebook) linked to the user.
	**/
	final providerData : Array<UserInfo>;
	/**
		The user's hashed password (base64-encoded), only if Firebase Auth hashing
		algorithm (SCRYPT) is used. If a different hashing algorithm had been used
		when uploading this user, as is typical when migrating from another Auth
		system, this will be an empty string. If no password is set, this is
		null. This is only available when the user is obtained from
		{@link BaseAuth.listUsers}.
	**/
	@:optional
	final passwordHash : String;
	/**
		The user's password salt (base64-encoded), only if Firebase Auth hashing
		algorithm (SCRYPT) is used. If a different hashing algorithm had been used to
		upload this user, typical when migrating from another Auth system, this will
		be an empty string. If no password is set, this is null. This is only
		available when the user is obtained from {@link BaseAuth.listUsers}.
	**/
	@:optional
	final passwordSalt : String;
	/**
		The user's custom claims object if available, typically used to define
		user roles and propagated to an authenticated user's ID token.
		This is set via {@link BaseAuth.setCustomUserClaims}
	**/
	@:optional
	final customClaims : { };
	/**
		The ID of the tenant the user belongs to, if available.
	**/
	@:optional
	final tenantId : String;
	/**
		The date the user's tokens are valid after, formatted as a UTC string.
		This is updated every time the user's refresh token are revoked either
		from the {@link BaseAuth.revokeRefreshTokens}
		API or from the Firebase Auth backend on big account changes (password
		resets, password or email updates, etc).
	**/
	@:optional
	final tokensValidAfterTime : String;
	/**
		The multi-factor related properties for the current user, if available.
	**/
	@:optional
	final multiFactor : MultiFactorSettings;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Dynamic;
	static var prototype : UserRecord;
}