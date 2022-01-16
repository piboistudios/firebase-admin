package firebase_admin.lib.machine_learning;

@:jsRequire("firebase-admin/lib/machine-learning/machine-learning-namespace") @valueModuleOnly extern class MachineLearningNamespace {
	/**
		Gets the {@link firebase-admin.machine-learning#MachineLearning} service for the
		default app or a given app.
		
		`admin.machineLearning()` can be called with no arguments to access the
		default app's `MachineLearning` service or as `admin.machineLearning(app)` to access
		the `MachineLearning` service associated with a specific app.
	**/
	static function machineLearning(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.machine_learning.machine_learning.MachineLearning;
}