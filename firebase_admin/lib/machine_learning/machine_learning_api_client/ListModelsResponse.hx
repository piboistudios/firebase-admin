package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef ListModelsResponse = {
	@:optional
	final models : Array<ModelResponse>;
	@:optional
	final nextPageToken : String;
};