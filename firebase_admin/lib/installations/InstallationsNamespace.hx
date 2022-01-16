package firebase_admin.lib.installations;

@:jsRequire("firebase-admin/lib/installations/installations-namespace") @valueModuleOnly extern class InstallationsNamespace {
	/**
		Gets the {@link firebase-admin.installations#Installations} service for the
		default app or a given app.
		
		`admin.installations()` can be called with no arguments to access the default
		app's {@link firebase-admin.installations#Installations} service or as
		`admin.installations(app)` to access the
		{@link firebase-admin.installations#Installations} service associated with a
		specific app.
	**/
	static function installations(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.installations.installations.Installations;
}