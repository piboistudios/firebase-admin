package firebase_admin.lib.instance_id.instance_id;

/**
	The `InstanceId` service enables deleting the Firebase instance IDs
	associated with Firebase client app instances.
**/
@:jsRequire("firebase-admin/lib/instance-id/instance-id", "InstanceId") extern class InstanceId {
	function new();
	private var app_ : Dynamic;
	/**
		Deletes the specified instance ID and the associated data from Firebase.
		
		Note that Google Analytics for Firebase uses its own form of Instance ID to
		keep track of analytics data. Therefore deleting a Firebase Instance ID does
		not delete Analytics data. See
		{@link https://firebase.google.com/support/privacy/manage-iids#delete_an_instance_id |
		Delete an Instance ID}
		for more information.
	**/
	function deleteInstanceId(instanceId:String):js.lib.Promise<ts.Undefined>;
	/**
		Returns the app associated with this InstanceId instance.
	**/
	final app : firebase_admin.lib.app.core.App;
	static var prototype : InstanceId;
}