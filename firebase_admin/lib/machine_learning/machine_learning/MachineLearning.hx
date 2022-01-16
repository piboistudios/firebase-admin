package firebase_admin.lib.machine_learning.machine_learning;

/**
	The Firebase `MachineLearning` service interface.
**/
@:jsRequire("firebase-admin/lib/machine-learning/machine-learning", "MachineLearning") extern class MachineLearning {
	function new();
	private final client : Dynamic;
	private final appInternal : Dynamic;
	/**
		The {@link firebase-admin.app#App} associated with the current `MachineLearning`
		service instance.
	**/
	final app : firebase_admin.lib.app.core.App;
	/**
		Creates a model in the current Firebase project.
	**/
	function createModel(model:firebase_admin.lib.machine_learning.machine_learning_api_client.ModelOptions):js.lib.Promise<Model>;
	/**
		Updates a model's metadata or model file.
	**/
	function updateModel(modelId:String, model:firebase_admin.lib.machine_learning.machine_learning_api_client.ModelOptions):js.lib.Promise<Model>;
	/**
		Publishes a Firebase ML model.
		
		A published model can be downloaded to client apps.
	**/
	function publishModel(modelId:String):js.lib.Promise<Model>;
	/**
		Unpublishes a Firebase ML model.
	**/
	function unpublishModel(modelId:String):js.lib.Promise<Model>;
	/**
		Gets the model specified by the given ID.
	**/
	function getModel(modelId:String):js.lib.Promise<Model>;
	/**
		Lists the current project's models.
	**/
	function listModels(?options:firebase_admin.lib.machine_learning.machine_learning_api_client.ListModelsOptions):js.lib.Promise<ListModelsResult>;
	/**
		Deletes a model from the current project.
	**/
	function deleteModel(modelId:String):js.lib.Promise<ts.Undefined>;
	private var setPublishStatus : Dynamic;
	private var signUrlIfPresent : Dynamic;
	private var signUrl : Dynamic;
	static var prototype : MachineLearning;
}