package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef ModelUpdateOptions = ts.AnyOf3<AutoMLTfliteModelOptions & {
	@:optional
	var state : {
		@:optional
		var published : Bool;
	};
}, ModelOptionsBase & {
	@:optional
	var state : {
		@:optional
		var published : Bool;
	};
}, GcsTfliteModelOptions & {
	@:optional
	var state : {
		@:optional
		var published : Bool;
	};
}>;