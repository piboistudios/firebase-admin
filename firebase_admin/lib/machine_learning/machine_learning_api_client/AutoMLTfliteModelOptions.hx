package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef AutoMLTfliteModelOptions = {
	var tfliteModel : {
		var automlModel : String;
	};
	@:optional
	var displayName : String;
	@:optional
	var tags : Array<String>;
};