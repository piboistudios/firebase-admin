package firebase_admin.lib.storage;

@:jsRequire("firebase-admin/lib/storage/storage-namespace") @valueModuleOnly extern class StorageNamespace {
	/**
		Gets the {@link firebase-admin.storage#Storage} service for the
		default app or a given app.
		
		`admin.storage()` can be called with no arguments to access the default
		app's `Storage` service or as `admin.storage(app)` to access the
		`Storage` service associated with a specific app.
	**/
	static function storage(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.storage.storage.Storage;
}