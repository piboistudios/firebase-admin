package firebase_admin.lib.app_check;

@:jsRequire("firebase-admin/lib/app-check/app-check-namespace") @valueModuleOnly extern class AppCheckNamespace {
	/**
		Gets the {@link firebase-admin.app-check#AppCheck} service for the default app or a given app.
		
		`admin.appCheck()` can be called with no arguments to access the default
		app's `AppCheck` service or as `admin.appCheck(app)` to access the
		`AppCheck` service associated with a specific app.
	**/
	static function appCheck(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.app_check.app_check.AppCheck;
}