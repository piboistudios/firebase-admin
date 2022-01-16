package firebase_admin.lib.messaging;

@:jsRequire("firebase-admin/lib/messaging/messaging-namespace") @valueModuleOnly extern class MessagingNamespace {
	/**
		Gets the {@link firebase-admin.messaging#Messaging} service for the
		default app or a given app.
		
		`admin.messaging()` can be called with no arguments to access the default
		app's `Messaging` service or as `admin.messaging(app)` to access the
		`Messaging` service associated with a specific app.
	**/
	static function messaging(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.messaging.messaging.Messaging;
}