package firebase_admin.lib.installations.installations;

/**
	The `Installations` service for the current app.
**/
@:jsRequire("firebase-admin/lib/installations/installations", "Installations") extern class Installations {
	function new();
	private var app_ : Dynamic;
	private var requestHandler : Dynamic;
	/**
		Deletes the specified installation ID and the associated data from Firebase.
	**/
	function deleteInstallation(fid:String):js.lib.Promise<ts.Undefined>;
	/**
		Returns the app associated with this Installations instance.
	**/
	final app : firebase_admin.lib.app.core.App;
	static var prototype : Installations;
}