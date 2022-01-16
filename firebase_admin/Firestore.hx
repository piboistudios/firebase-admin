package firebase_admin;

@:jsRequire("firebase-admin", "firestore") @valueModuleOnly extern class Firestore {
	@:selfCall
	static function call(?app:firebase_admin.lib.app.core.App):firebase_admin.firestore.Firestore;
	/**
		The v1beta1 Veneer client. This client provides access to to the underlying
		Firestore v1beta1 RPCs.
	**/
	static final v1beta1 : {
		var FirestoreClient : {
			var prototype : google_cloud.firestore.types.v1beta1.firestore_client.FirestoreClient;
			/**
				The DNS address for this API service.
			**/
			final servicePath : String;
			/**
				The DNS address for this API service - same as servicePath(),
				exists for compatibility reasons.
			**/
			final apiEndpoint : String;
			/**
				The port for this API service.
			**/
			final port : Float;
			/**
				The scopes needed to make gRPC calls for every method defined
				in this service.
			**/
			final scopes : Array<String>;
		};
	};
	/**
		The v1 Veneer clients. These clients provide access to the Firestore Admin
		API and the underlying Firestore v1 RPCs.
	**/
	static final v1 : {
		var FirestoreClient : {
			var prototype : google_cloud.firestore.types.v1.firestore_client.FirestoreClient;
			/**
				The DNS address for this API service.
			**/
			final servicePath : String;
			/**
				The DNS address for this API service - same as servicePath(),
				exists for compatibility reasons.
			**/
			final apiEndpoint : String;
			/**
				The port for this API service.
			**/
			final port : Float;
			/**
				The scopes needed to make gRPC calls for every method defined
				in this service.
			**/
			final scopes : Array<String>;
		};
		var FirestoreAdminClient : {
			var prototype : google_cloud.firestore.types.v1.firestore_admin_client.FirestoreAdminClient;
			/**
				The DNS address for this API service.
			**/
			final servicePath : String;
			/**
				The DNS address for this API service - same as servicePath(),
				exists for compatibility reasons.
			**/
			final apiEndpoint : String;
			/**
				The port for this API service.
			**/
			final port : Float;
			/**
				The scopes needed to make gRPC calls for every method defined
				in this service.
			**/
			final scopes : Array<String>;
		};
	};
	/**
		Sets or disables the log function for all active Firestore instances.
	**/
	static function setLogFunction(logger:Null<(msg:String) -> Void>):Void;
}