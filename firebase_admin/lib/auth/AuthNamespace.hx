package firebase_admin.lib.auth;

@:jsRequire("firebase-admin/lib/auth/auth-namespace") @valueModuleOnly extern class AuthNamespace {
	/**
		Gets the {@link firebase-admin.auth#Auth} service for the default app or a
		given app.
		
		`admin.auth()` can be called with no arguments to access the default app's
		{@link firebase-admin.auth#Auth} service or as `admin.auth(app)` to access the
		{@link firebase-admin.auth#Auth} service associated with a specific app.
	**/
	static function auth(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.auth.auth.Auth;
}