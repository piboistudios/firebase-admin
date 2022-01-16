package firebase_admin.lib.app_check.app_check;

/**
	The Firebase `AppCheck` service interface.
**/
@:jsRequire("firebase-admin/lib/app-check/app-check", "AppCheck") extern class AppCheck {
	function new();
	final app : firebase_admin.lib.app.core.App;
	private final client : Dynamic;
	private final tokenGenerator : Dynamic;
	private final appCheckTokenVerifier : Dynamic;
	/**
		Creates a new {@link AppCheckToken} that can be sent
		back to a client.
	**/
	function createToken(appId:String, ?options:firebase_admin.lib.app_check.app_check_api.AppCheckTokenOptions):js.lib.Promise<firebase_admin.lib.app_check.app_check_api.AppCheckToken>;
	/**
		Verifies a Firebase App Check token (JWT). If the token is valid, the promise is
		fulfilled with the token's decoded claims; otherwise, the promise is
		rejected.
	**/
	function verifyToken(appCheckToken:String):js.lib.Promise<firebase_admin.lib.app_check.app_check_api.VerifyAppCheckTokenResponse>;
	static var prototype : AppCheck;
}