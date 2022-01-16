package firebase_admin.lib.app.lifecycle;

@:jsRequire("firebase-admin/lib/app/lifecycle", "AppStore") extern class AppStore {
	function new();
	private final appStore : Dynamic;
	function initializeApp(?options:firebase_admin.AppOptions, ?appName:String):firebase_admin.lib.app.core.App;
	function getApp(?appName:String):firebase_admin.lib.app.core.App;
	function getApps():Array<firebase_admin.lib.app.core.App>;
	function deleteApp(app:firebase_admin.lib.app.core.App):js.lib.Promise<ts.Undefined>;
	function clearAllApps():js.lib.Promise<ts.Undefined>;
	/**
		Removes the specified App instance from the store. This is currently called by the
		{@link FirebaseApp.delete} method. Can be removed once the app deletion is handled
		entirely by the {@link deleteApp} top-level function.
	**/
	function removeApp(appName:String):Void;
	static var prototype : AppStore;
}