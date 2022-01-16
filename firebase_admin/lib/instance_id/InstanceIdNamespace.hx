package firebase_admin.lib.instance_id;

@:jsRequire("firebase-admin/lib/instance-id/instance-id-namespace") @valueModuleOnly extern class InstanceIdNamespace {
	/**
		Gets the {@link firebase-admin.instance-id#InstanceId} service for the
		default app or a given app.
		
		`admin.instanceId()` can be called with no arguments to access the default
		app's `InstanceId` service or as `admin.instanceId(app)` to access the
		`InstanceId` service associated with a specific app.
	**/
	static function instanceId(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.instance_id.instance_id.InstanceId;
}