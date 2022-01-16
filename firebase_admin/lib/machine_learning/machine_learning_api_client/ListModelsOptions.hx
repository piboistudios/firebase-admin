package firebase_admin.lib.machine_learning.machine_learning_api_client;

/**
	Interface representing options for listing Models.
**/
typedef ListModelsOptions = {
	/**
		An expression that specifies how to filter the results.
		
		Examples:
		
		```
		display_name = your_model
		display_name : experimental_*
		tags: face_detector AND tags: experimental
		state.published = true
		```
		
		See https://firebase.google.com/docs/ml/manage-hosted-models#list_your_projects_models
	**/
	@:optional
	var filter : String;
	/**
		The number of results to return in each page.
	**/
	@:optional
	var pageSize : Float;
	/**
		A token that specifies the result page to return.
	**/
	@:optional
	var pageToken : String;
};