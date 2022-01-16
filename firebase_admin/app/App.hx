package firebase_admin.app;

/**
	A Firebase app holds the initialization information for a collection of
	services.
	
	Do not call this constructor directly. Instead, use
	{@link firebase-admin.app#initializeApp} to create an app.
**/
typedef App = {
	function appCheck():firebase_admin.lib.app_check.app_check.AppCheck;
	function auth():firebase_admin.lib.auth.auth.Auth;
	function database(?url:String):firebase_admin.lib.database.database.Database;
	function firestore():firebase_admin.firestore.Firestore;
	function installations():firebase_admin.lib.installations.installations.Installations;
	function instanceId():firebase_admin.lib.instance_id.instance_id.InstanceId;
	function machineLearning():firebase_admin.lib.machine_learning.machine_learning.MachineLearning;
	function messaging():firebase_admin.lib.messaging.messaging.Messaging;
	function projectManagement():firebase_admin.lib.project_management.project_management.ProjectManagement;
	function remoteConfig():firebase_admin.lib.remote_config.remote_config.RemoteConfig;
	function securityRules():firebase_admin.lib.security_rules.security_rules.SecurityRules;
	function storage():firebase_admin.lib.storage.storage.Storage;
	/**
		Renders this local `FirebaseApp` unusable and frees the resources of
		all associated services (though it does *not* clean up any backend
		resources). When running the SDK locally, this method
		must be called to ensure graceful termination of the process.
	**/
	function delete():js.lib.Promise<ts.Undefined>;
	/**
		The (read-only) name for this app.
		
		The default app's name is `"[DEFAULT]"`.
	**/
	var name : String;
	/**
		The (read-only) configuration options for this app. These are the original
		parameters given in {@link firebase-admin.app#initializeApp}.
	**/
	var options : firebase_admin.AppOptions;
};