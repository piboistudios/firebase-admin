package firebase_admin.lib.app;

@:jsRequire("firebase-admin/lib/app/lifecycle") @valueModuleOnly extern class Lifecycle {
	static function initializeApp(?options:firebase_admin.AppOptions, ?appName:String):firebase_admin.lib.app.core.App;
	static function getApp(?appName:String):firebase_admin.lib.app.core.App;
	static function getApps():Array<firebase_admin.lib.app.core.App>;
	/**
		Renders this given `App` unusable and frees the resources of
		all associated services (though it does *not* clean up any backend
		resources). When running the SDK locally, this method
		must be called to ensure graceful termination of the process.
	**/
	static function deleteApp(app:firebase_admin.lib.app.core.App):js.lib.Promise<ts.Undefined>;
	static final defaultAppStore : firebase_admin.lib.app.lifecycle.AppStore;
	/**
		Constant holding the environment variable name with the default config.
		If the environment variable contains a string that starts with '{' it will be parsed as JSON,
		otherwise it will be assumed to be pointing to a file.
	**/
	static final FIREBASE_CONFIG_VAR : String;
}