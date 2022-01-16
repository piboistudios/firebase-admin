package firebase_admin.lib;

@:jsRequire("firebase-admin/lib/firebase-namespace-api") @valueModuleOnly extern class FirebaseNamespaceApi {
	static function app(?name:String):firebase_admin.app.App;
	static function initializeApp(?options:firebase_admin.AppOptions, ?name:String):firebase_admin.app.App;
	/**
		Gets the {@link firebase-admin.app-check#AppCheck} service for the default app or a given app.
		
		`admin.appCheck()` can be called with no arguments to access the default
		app's `AppCheck` service or as `admin.appCheck(app)` to access the
		`AppCheck` service associated with a specific app.
	**/
	static function appCheck(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.app_check.app_check.AppCheck;
	/**
		Gets the {@link firebase-admin.auth#Auth} service for the default app or a
		given app.
		
		`admin.auth()` can be called with no arguments to access the default app's
		{@link firebase-admin.auth#Auth} service or as `admin.auth(app)` to access the
		{@link firebase-admin.auth#Auth} service associated with a specific app.
	**/
	static function auth(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.auth.auth.Auth;
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
	static function firestore(?app:firebase_admin.lib.app.core.App):firebase_admin.firestore.Firestore;
	/**
		Gets the {@link firebase-admin.instance-id#InstanceId} service for the
		default app or a given app.
		
		`admin.instanceId()` can be called with no arguments to access the default
		app's `InstanceId` service or as `admin.instanceId(app)` to access the
		`InstanceId` service associated with a specific app.
	**/
	static function instanceId(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.instance_id.instance_id.InstanceId;
	/**
		Gets the {@link firebase-admin.installations#Installations} service for the
		default app or a given app.
		
		`admin.installations()` can be called with no arguments to access the default
		app's {@link firebase-admin.installations#Installations} service or as
		`admin.installations(app)` to access the
		{@link firebase-admin.installations#Installations} service associated with a
		specific app.
	**/
	static function installations(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.installations.installations.Installations;
	/**
		Gets the {@link firebase-admin.machine-learning#MachineLearning} service for the
		default app or a given app.
		
		`admin.machineLearning()` can be called with no arguments to access the
		default app's `MachineLearning` service or as `admin.machineLearning(app)` to access
		the `MachineLearning` service associated with a specific app.
	**/
	static function machineLearning(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.machine_learning.machine_learning.MachineLearning;
	/**
		Gets the {@link firebase-admin.messaging#Messaging} service for the
		default app or a given app.
		
		`admin.messaging()` can be called with no arguments to access the default
		app's `Messaging` service or as `admin.messaging(app)` to access the
		`Messaging` service associated with a specific app.
	**/
	static function messaging(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.messaging.messaging.Messaging;
	/**
		Gets the {@link firebase-admin.project-management#ProjectManagement} service for the
		default app or a given app.
		
		`admin.projectManagement()` can be called with no arguments to access the
		default app's `ProjectManagement` service, or as `admin.projectManagement(app)` to access
		the `ProjectManagement` service associated with a specific app.
	**/
	static function projectManagement(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.project_management.project_management.ProjectManagement;
	/**
		Gets the {@link firebase-admin.remote-config#RemoteConfig} service for the
		default app or a given app.
		
		`admin.remoteConfig()` can be called with no arguments to access the default
		app's `RemoteConfig` service or as `admin.remoteConfig(app)` to access the
		`RemoteConfig` service associated with a specific app.
	**/
	static function remoteConfig(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.remote_config.remote_config.RemoteConfig;
	/**
		Gets the {@link firebase-admin.security-rules#SecurityRules} service for the default
		app or a given app.
		
		`admin.securityRules()` can be called with no arguments to access the
		default app's {@link firebase-admin.security-rules#SecurityRules}
		service, or as `admin.securityRules(app)` to access
		the {@link firebase-admin.security-rules#SecurityRules}
		service associated with a specific app.
	**/
	static function securityRules(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.security_rules.security_rules.SecurityRules;
	/**
		Gets the {@link firebase-admin.storage#Storage} service for the
		default app or a given app.
		
		`admin.storage()` can be called with no arguments to access the default
		app's `Storage` service or as `admin.storage(app)` to access the
		`Storage` service associated with a specific app.
	**/
	static function storage(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.storage.storage.Storage;
	static final SDK_VERSION : String;
	static final apps : Array<Null<firebase_admin.app.App>>;
}