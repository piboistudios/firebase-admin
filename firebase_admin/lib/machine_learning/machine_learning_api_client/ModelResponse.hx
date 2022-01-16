package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef ModelResponse = {
	final name : String;
	final createTime : String;
	final updateTime : String;
	final etag : String;
	@:optional
	final modelHash : String;
	@:optional
	final activeOperations : Array<OperationResponse>;
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