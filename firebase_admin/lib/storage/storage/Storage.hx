package firebase_admin.lib.storage.storage;

/**
	The default `Storage` service if no
	app is provided or the `Storage` service associated with the provided
	app.
**/
@:jsRequire("firebase-admin/lib/storage/storage", "Storage") extern class Storage {
	function new();
	private final appInternal : Dynamic;
	private final storageClient : Dynamic;
	/**
		Gets a reference to a Cloud Storage bucket.
	**/
	function bucket(?name:String):google_cloud.storage.Bucket;
	/**
		Optional app whose `Storage` service to
		return. If not provided, the default `Storage` service will be returned.
	**/
	final app : firebase_admin.lib.app.core.App;
	static var prototype : Storage;
}