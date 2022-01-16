package firebase_admin.lib.machine_learning.machine_learning;

/**
	A TensorFlow Lite Model output object
	
	One of either the `gcsTfliteUri` or `automlModel` properties will be
	defined.
**/
typedef TFLiteModel = {
	/**
		The size of the model.
	**/
	final sizeBytes : Float;
	/**
		The URI from which the model was originally provided to Firebase.
	**/
	@:optional
	final gcsTfliteUri : String;
	/**
		The AutoML model reference from which the model was originally provided
		to Firebase.
	**/
	@:optional
	final automlModel : String;
};