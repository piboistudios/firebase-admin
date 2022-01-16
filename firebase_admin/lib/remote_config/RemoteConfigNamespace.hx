package firebase_admin.lib.remote_config;

@:jsRequire("firebase-admin/lib/remote-config/remote-config-namespace") @valueModuleOnly extern class RemoteConfigNamespace {
	/**
		Gets the {@link firebase-admin.remote-config#RemoteConfig} service for the
		default app or a given app.
		
		`admin.remoteConfig()` can be called with no arguments to access the default
		app's `RemoteConfig` service or as `admin.remoteConfig(app)` to access the
		`RemoteConfig` service associated with a specific app.
	**/
	static function remoteConfig(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.remote_config.remote_config.RemoteConfig;
}