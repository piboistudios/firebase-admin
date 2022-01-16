package firebase_admin.lib.project_management.ios_app;

/**
	A reference to a Firebase iOS app.
	
	Do not call this constructor directly. Instead, use {@link ProjectManagement.iosApp}.
**/
@:jsRequire("firebase-admin/lib/project-management/ios-app", "IosApp") extern class IosApp {
	function new();
	final appId : String;
	private final requestHandler : Dynamic;
	private final resourceName : Dynamic;
	/**
		Retrieves metadata about this iOS app.
	**/
	function getMetadata():js.lib.Promise<IosAppMetadata>;
	/**
		Sets the optional user-assigned display name of the app.
	**/
	function setDisplayName(newDisplayName:String):js.lib.Promise<ts.Undefined>;
	/**
		Gets the configuration artifact associated with this app.
	**/
	function getConfig():js.lib.Promise<String>;
	static var prototype : IosApp;
}