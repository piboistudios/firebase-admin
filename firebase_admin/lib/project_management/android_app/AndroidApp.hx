package firebase_admin.lib.project_management.android_app;

/**
	A reference to a Firebase Android app.
	
	Do not call this constructor directly. Instead, use {@link ProjectManagement.androidApp}.
**/
@:jsRequire("firebase-admin/lib/project-management/android-app", "AndroidApp") extern class AndroidApp {
	function new();
	final appId : String;
	private final requestHandler : Dynamic;
	private final resourceName : Dynamic;
	/**
		Retrieves metadata about this Android app.
	**/
	function getMetadata():js.lib.Promise<AndroidAppMetadata>;
	/**
		Sets the optional user-assigned display name of the app.
	**/
	function setDisplayName(newDisplayName:String):js.lib.Promise<ts.Undefined>;
	/**
		Gets the list of SHA certificates associated with this Android app in Firebase.
	**/
	function getShaCertificates():js.lib.Promise<Array<ShaCertificate>>;
	/**
		Adds the given SHA certificate to this Android app.
	**/
	function addShaCertificate(certificateToAdd:ShaCertificate):js.lib.Promise<ts.Undefined>;
	/**
		Deletes the specified SHA certificate from this Android app.
	**/
	function deleteShaCertificate(certificateToDelete:ShaCertificate):js.lib.Promise<ts.Undefined>;
	/**
		Gets the configuration artifact associated with this app.
	**/
	function getConfig():js.lib.Promise<String>;
	static var prototype : AndroidApp;
}