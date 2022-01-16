package firebase_admin.firestore;

/**
	An options object to configure throttling on BulkWriter.
**/
typedef BulkWriterOptions = {
	/**
		Whether to disable or configure throttling. By default, throttling is
		enabled. This field can be set to either a boolean or a config
		object. Setting it to `true` will use default values. You can override
		the defaults by setting it to `false` to disable throttling, or by
		setting the config values to enable throttling with the provided values.
	**/
	@:optional
	final throttling : ts.AnyOf2<Bool, {
		@:optional
		var initialOpsPerSecond : Float;
		@:optional
		var maxOpsPerSecond : Float;
	}>;
};