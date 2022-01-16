package firebase_admin.lib.machine_learning.machine_learning;

/**
	A Firebase ML Model output object.
**/
@:jsRequire("firebase-admin/lib/machine-learning/machine-learning", "Model") extern class Model {
	function new();
	private var model : Dynamic;
	@:optional
	private final client : Dynamic;
	/**
		The ID of the model.
	**/
	final modelId : String;
	/**
		The model's name. This is the name you use from your app to load the
		model.
	**/
	final displayName : String;
	/**
		The model's tags, which can be used to group or filter models in list
		operations.
	**/
	final tags : Array<String>;
	/**
		The timestamp of the model's creation.
	**/
	final createTime : String;
	/**
		The timestamp of the model's most recent update.
	**/
	final updateTime : String;
	/**
		Error message when model validation fails.
	**/
	final validationError : Null<String>;
	/**
		True if the model is published.
	**/
	final published : Bool;
	/**
		The ETag identifier of the current version of the model. This value
		changes whenever you update any of the model's properties.
	**/
	final etag : String;
	/**
		The hash of the model's `tflite` file. This value changes only when
		you upload a new TensorFlow Lite model.
	**/
	final modelHash : Null<String>;
	/**
		Metadata about the model's TensorFlow Lite model file.
	**/
	final tfliteModel : Null<TFLiteModel>;
	/**
		True if the model is locked by a server-side operation. You can't make
		changes to a locked model. See {@link Model.waitForUnlocked}.
	**/
	final locked : Bool;
	/**
		Return the model as a JSON object.
	**/
	function toJSON():{ };
	/**
		Wait for the model to be unlocked.
	**/
	function waitForUnlocked(?maxTimeMillis:Float):js.lib.Promise<ts.Undefined>;
	static var prototype : Model;
	private static var validateAndClone : Dynamic;
}