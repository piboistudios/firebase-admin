package firebase_admin.lib.database;

@:jsRequire("firebase-admin/lib/database/database-namespace") @valueModuleOnly extern class DatabaseNamespace {
	/**
		Gets the {@link firebase-admin.database#Database} service for the default
		app or a given app.
		
		`admin.database()` can be called with no arguments to access the default
		app's `Database` service or as `admin.database(app)` to access the
		`Database` service associated with a specific app.
		
		`admin.database` is also a namespace that can be used to access global
		constants and methods associated with the `Database` service.
	**/
	static function database(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.database.database.Database;
}