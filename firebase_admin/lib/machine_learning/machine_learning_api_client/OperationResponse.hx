package firebase_admin.lib.machine_learning.machine_learning_api_client;

typedef OperationResponse = {
	@:optional
	final name : String;
	@:optional
	final metadata : { };
	final done : Bool;
	@:optional
	final error : StatusErrorResponse;
	@:optional
	final response : ModelResponse;
};