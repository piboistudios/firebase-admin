package firebase_admin.lib.machine_learning.machine_learning;

/**
	Response object for a listModels operation.
**/
typedef ListModelsResult = {
	/**
		A list of models in your project.
	**/
	final models : Array<Model>;
	/**
		A token you can use to retrieve the next page of results. If null, the
		current page is the final page.
	**/
	@:optional
	final pageToken : String;
};