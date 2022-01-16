package firebase_admin.lib.machine_learning.machine_learning_api_client;

/**
	Firebase ML Model input objects
**/
typedef ModelOptionsBase = {
	@:optional
	var displayName : String;
	@:optional
	var tags : Array<String>;
};