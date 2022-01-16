package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef ModelContent = {
	@:optional
	final displayName : String;
	@:optional
	final tags : Array<String>;
	@:optional
	final state : {
		@:optional
		final validationError : StatusErrorResponse;
		@:optional
		final published : Bool;
	};
	@:optional
	final tfliteModel : {
		@:optional
		final gcsTfliteUri : String;
		@:optional
		final automlModel : String;
		final sizeBytes : Float;
	};
};