package firebase_admin.lib.auth.base_auth;

/**
	Common parent interface for both `Auth` and `TenantAwareAuth` APIs.
**/
@:jsRequire("firebase-admin/lib/auth/base-auth", "BaseAuth") extern class BaseAuth {
	function new();
	/**
		Creates a new Firebase custom token (JWT) that can be sent back to a client
		device to use to sign in with the client SDKs' `signInWithCustomToken()`
		methods. (Tenant-aware instances will also embed the tenant ID in the
		token.)
		
		See {@link https://firebase.google.com/docs/auth/admin/create-custom-tokens | Create Custom Tokens}
		for code samples and detailed documentation.
	**/
	function createCustomToken(uid:String, ?developerClaims:Dynamic):js.lib.Promise<String>;
	/**
		Verifies a Firebase ID token (JWT). If the token is valid, the promise is
		fulfilled with the token's decoded claims; otherwise, the promise is
		rejected.
		
		If `checkRevoked` is set to true, first verifies whether the corresponding
		user is disabled. If yes, an `auth/user-disabled` error is thrown. If no,
		verifies if the session corresponding to the ID token was revoked. If the
		corresponding user's session was invalidated, an `auth/id-token-revoked`
		error is thrown. If not specified the check is not applied.
		
		See {@link https://firebase.google.com/docs/auth/admin/verify-id-tokens | Verify ID Tokens}
		for code samples and detailed documentation.
	**/
	function verifyIdToken(idToken:String, ?checkRevoked:Bool):js.lib.Promise<firebase_admin.lib.auth.token_verifier.DecodedIdToken>;
	/**
		Gets the user data for the user corresponding to a given `uid`.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#retrieve_user_data | Retrieve user data}
		for code samples and detailed documentation.
	**/
	function getUser(uid:String):js.lib.Promise<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Gets the user data for the user corresponding to a given email.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#retrieve_user_data | Retrieve user data}
		for code samples and detailed documentation.
	**/
	function getUserByEmail(email:String):js.lib.Promise<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Gets the user data for the user corresponding to a given phone number. The
		phone number has to conform to the E.164 specification.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#retrieve_user_data | Retrieve user data}
		for code samples and detailed documentation.
	**/
	function getUserByPhoneNumber(phoneNumber:String):js.lib.Promise<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Gets the user data for the user corresponding to a given provider id.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#retrieve_user_data | Retrieve user data}
		for code samples and detailed documentation.
	**/
	function getUserByProviderUid(providerId:String, uid:String):js.lib.Promise<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Gets the user data corresponding to the specified identifiers.
		
		There are no ordering guarantees; in particular, the nth entry in the result list is not
		guaranteed to correspond to the nth entry in the input parameters list.
		
		Only a maximum of 100 identifiers may be supplied. If more than 100 identifiers are supplied,
		this method throws a FirebaseAuthError.
	**/
	function getUsers(identifiers:Array<firebase_admin.lib.auth.identifier.UserIdentifier>):js.lib.Promise<GetUsersResult>;
	/**
		Retrieves a list of users (single batch only) with a size of `maxResults`
		starting from the offset as specified by `pageToken`. This is used to
		retrieve all the users of a specified project in batches.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#list_all_users | List all users}
		for code samples and detailed documentation.
	**/
	function listUsers(?maxResults:Float, ?pageToken:String):js.lib.Promise<ListUsersResult>;
	/**
		Creates a new user.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#create_a_user | Create a user}
		for code samples and detailed documentation.
	**/
	function createUser(properties:firebase_admin.lib.auth.auth_config.CreateRequest):js.lib.Promise<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Deletes an existing user.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#delete_a_user | Delete a user}
		for code samples and detailed documentation.
	**/
	function deleteUser(uid:String):js.lib.Promise<ts.Undefined>;
	/**
		Deletes the users specified by the given uids.
		
		Deleting a non-existing user won't generate an error (i.e. this method
		is idempotent.) Non-existing users are considered to be successfully
		deleted, and are therefore counted in the
		`DeleteUsersResult.successCount` value.
		
		Only a maximum of 1000 identifiers may be supplied. If more than 1000
		identifiers are supplied, this method throws a FirebaseAuthError.
		
		This API is currently rate limited at the server to 1 QPS. If you exceed
		this, you may get a quota exceeded error. Therefore, if you want to
		delete more than 1000 users, you may need to add a delay to ensure you
		don't go over this limit.
	**/
	function deleteUsers(uids:Array<String>):js.lib.Promise<DeleteUsersResult>;
	/**
		Updates an existing user.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-users#update_a_user | Update a user}
		for code samples and detailed documentation.
	**/
	function updateUser(uid:String, properties:firebase_admin.lib.auth.auth_config.UpdateRequest):js.lib.Promise<firebase_admin.lib.auth.user_record.UserRecord>;
	/**
		Sets additional developer claims on an existing user identified by the
		provided `uid`, typically used to define user roles and levels of
		access. These claims should propagate to all devices where the user is
		already signed in (after token expiration or when token refresh is forced)
		and the next time the user signs in. If a reserved OIDC claim name
		is used (sub, iat, iss, etc), an error is thrown. They are set on the
		authenticated user's ID token JWT.
		
		See {@link https://firebase.google.com/docs/auth/admin/custom-claims |
		Defining user roles and access levels}
		for code samples and detailed documentation.
	**/
	function setCustomUserClaims(uid:String, customUserClaims:Null<Dynamic>):js.lib.Promise<ts.Undefined>;
	/**
		Revokes all refresh tokens for an existing user.
		
		This API will update the user's {@link UserRecord.tokensValidAfterTime} to
		the current UTC. It is important that the server on which this is called has
		its clock set correctly and synchronized.
		
		While this will revoke all sessions for a specified user and disable any
		new ID tokens for existing sessions from getting minted, existing ID tokens
		may remain active until their natural expiration (one hour). To verify that
		ID tokens are revoked, use {@link BaseAuth.verifyIdToken}
		where `checkRevoked` is set to true.
	**/
	function revokeRefreshTokens(uid:String):js.lib.Promise<ts.Undefined>;
	/**
		Imports the provided list of users into Firebase Auth.
		A maximum of 1000 users are allowed to be imported one at a time.
		When importing users with passwords,
		{@link UserImportOptions} are required to be
		specified.
		This operation is optimized for bulk imports and will ignore checks on `uid`,
		`email` and other identifier uniqueness which could result in duplications.
	**/
	function importUsers(users:Array<firebase_admin.lib.auth.user_import_builder.UserImportRecord>, ?options:firebase_admin.lib.auth.user_import_builder.UserImportOptions):js.lib.Promise<firebase_admin.lib.auth.user_import_builder.UserImportResult>;
	/**
		Creates a new Firebase session cookie with the specified options. The created
		JWT string can be set as a server-side session cookie with a custom cookie
		policy, and be used for session management. The session cookie JWT will have
		the same payload claims as the provided ID token.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-cookies | Manage Session Cookies}
		for code samples and detailed documentation.
	**/
	function createSessionCookie(idToken:String, sessionCookieOptions:SessionCookieOptions):js.lib.Promise<String>;
	/**
		Verifies a Firebase session cookie. Returns a Promise with the cookie claims.
		Rejects the promise if the cookie could not be verified.
		
		If `checkRevoked` is set to true, first verifies whether the corresponding
		user is disabled: If yes, an `auth/user-disabled` error is thrown. If no,
		verifies if the session corresponding to the session cookie was revoked.
		If the corresponding user's session was invalidated, an
		`auth/session-cookie-revoked` error is thrown. If not specified the check
		is not performed.
		
		See {@link https://firebase.google.com/docs/auth/admin/manage-cookies#verify_session_cookie_and_check_permissions |
		Verify Session Cookies}
		for code samples and detailed documentation
	**/
	function verifySessionCookie(sessionCookie:String, ?checkRevoked:Bool):js.lib.Promise<firebase_admin.lib.auth.token_verifier.DecodedIdToken>;
	/**
		Generates the out of band email action link to reset a user's password.
		The link is generated for the user with the specified email address. The
		optional  {@link ActionCodeSettings} object
		defines whether the link is to be handled by a mobile app or browser and the
		additional state information to be passed in the deep link, etc.
	**/
	function generatePasswordResetLink(email:String, ?actionCodeSettings:firebase_admin.lib.auth.action_code_settings_builder.ActionCodeSettings):js.lib.Promise<String>;
	/**
		Generates the out of band email action link to verify the user's ownership
		of the specified email. The {@link ActionCodeSettings} object provided
		as an argument to this method defines whether the link is to be handled by a
		mobile app or browser along with additional state information to be passed in
		the deep link, etc.
	**/
	function generateEmailVerificationLink(email:String, ?actionCodeSettings:firebase_admin.lib.auth.action_code_settings_builder.ActionCodeSettings):js.lib.Promise<String>;
	/**
		Generates the out of band email action link to verify the user's ownership
		of the specified email. The {@link ActionCodeSettings} object provided
		as an argument to this method defines whether the link is to be handled by a
		mobile app or browser along with additional state information to be passed in
		the deep link, etc.
	**/
	function generateSignInWithEmailLink(email:String, actionCodeSettings:firebase_admin.lib.auth.action_code_settings_builder.ActionCodeSettings):js.lib.Promise<String>;
	/**
		Returns the list of existing provider configurations matching the filter
		provided. At most, 100 provider configs can be listed at a time.
		
		SAML and OIDC provider support requires Google Cloud's Identity Platform
		(GCIP). To learn more about GCIP, including pricing and features,
		see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	**/
	function listProviderConfigs(options:firebase_admin.lib.auth.auth_config.AuthProviderConfigFilter):js.lib.Promise<firebase_admin.lib.auth.auth_config.ListProviderConfigResults>;
	/**
		Looks up an Auth provider configuration by the provided ID.
		Returns a promise that resolves with the provider configuration
		corresponding to the provider ID specified. If the specified ID does not
		exist, an `auth/configuration-not-found` error is thrown.
		
		SAML and OIDC provider support requires Google Cloud's Identity Platform
		(GCIP). To learn more about GCIP, including pricing and features,
		see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	**/
	function getProviderConfig(providerId:String):js.lib.Promise<firebase_admin.lib.auth.auth_config.AuthProviderConfig>;
	/**
		Deletes the provider configuration corresponding to the provider ID passed.
		If the specified ID does not exist, an `auth/configuration-not-found` error
		is thrown.
		
		SAML and OIDC provider support requires Google Cloud's Identity Platform
		(GCIP). To learn more about GCIP, including pricing and features,
		see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	**/
	function deleteProviderConfig(providerId:String):js.lib.Promise<ts.Undefined>;
	/**
		Returns a promise that resolves with the updated `AuthProviderConfig`
		corresponding to the provider ID specified.
		If the specified ID does not exist, an `auth/configuration-not-found` error
		is thrown.
		
		SAML and OIDC provider support requires Google Cloud's Identity Platform
		(GCIP). To learn more about GCIP, including pricing and features,
		see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	**/
	function updateProviderConfig(providerId:String, updatedConfig:firebase_admin.lib.auth.auth_config.UpdateAuthProviderRequest):js.lib.Promise<firebase_admin.lib.auth.auth_config.AuthProviderConfig>;
	/**
		Returns a promise that resolves with the newly created `AuthProviderConfig`
		when the new provider configuration is created.
		
		SAML and OIDC provider support requires Google Cloud's Identity Platform
		(GCIP). To learn more about GCIP, including pricing and features,
		see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	**/
	function createProviderConfig(config:firebase_admin.lib.auth.auth_config.AuthProviderConfig):js.lib.Promise<firebase_admin.lib.auth.auth_config.AuthProviderConfig>;
	/**
		Verifies the decoded Firebase issued JWT is not revoked or disabled. Returns a promise that
		resolves with the decoded claims on success. Rejects the promise with revocation error if revoked
		or user disabled.
	**/
	private var verifyDecodedJWTNotRevokedOrDisabled : Dynamic;
	static var prototype : BaseAuth;
}