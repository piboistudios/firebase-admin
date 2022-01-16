package firebase_admin.lib.project_management.project_management;

/**
	The Firebase ProjectManagement service interface.
**/
@:jsRequire("firebase-admin/lib/project-management/project-management", "ProjectManagement") extern class ProjectManagement {
	function new();
	final app : firebase_admin.lib.app.core.App;
	private final requestHandler : Dynamic;
	private var projectId : Dynamic;
	/**
		Lists up to 100 Firebase Android apps associated with this Firebase project.
	**/
	function listAndroidApps():js.lib.Promise<Array<firebase_admin.lib.project_management.android_app.AndroidApp>>;
	/**
		Lists up to 100 Firebase iOS apps associated with this Firebase project.
	**/
	function listIosApps():js.lib.Promise<Array<firebase_admin.lib.project_management.ios_app.IosApp>>;
	/**
		Creates an `AndroidApp` object, referencing the specified Android app within
		this Firebase project.
		
		This method does not perform an RPC.
	**/
	function androidApp(appId:String):firebase_admin.lib.project_management.android_app.AndroidApp;
	/**
		Creates an `iOSApp` object, referencing the specified iOS app within
		this Firebase project.
		
		This method does not perform an RPC.
	**/
	function iosApp(appId:String):firebase_admin.lib.project_management.ios_app.IosApp;
	/**
		Creates a `ShaCertificate` object.
		
		This method does not perform an RPC.
	**/
	function shaCertificate(shaHash:String):firebase_admin.lib.project_management.android_app.ShaCertificate;
	/**
		Creates a new Firebase Android app associated with this Firebase project.
	**/
	function createAndroidApp(packageName:String, ?displayName:String):js.lib.Promise<firebase_admin.lib.project_management.android_app.AndroidApp>;
	/**
		Creates a new Firebase iOS app associated with this Firebase project.
	**/
	function createIosApp(bundleId:String, ?displayName:String):js.lib.Promise<firebase_admin.lib.project_management.ios_app.IosApp>;
	/**
		Lists up to 100 Firebase apps associated with this Firebase project.
	**/
	function listAppMetadata():js.lib.Promise<Array<firebase_admin.lib.project_management.app_metadata.AppMetadata>>;
	/**
		Update the display name of this Firebase project.
	**/
	function setDisplayName(newDisplayName:String):js.lib.Promise<ts.Undefined>;
	private var transformResponseToAppMetadata : Dynamic;
	private var getResourceName : Dynamic;
	private var getProjectId : Dynamic;
	/**
		Lists up to 100 Firebase apps for a specified platform, associated with this Firebase project.
	**/
	private var listPlatformApps : Dynamic;
	private var assertListAppsResponseData : Dynamic;
	static var prototype : ProjectManagement;
}