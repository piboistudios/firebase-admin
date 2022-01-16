package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef GcsTfliteModelOptions = {
	var tfliteModel : {
		var gcsTfliteUri : String;
	};
	@:optional
	var displayName : String;
	@:optional
	var tags : Array<String>;
};