package firebase_admin.lib.project_management.app_metadata;

/**
	Metadata about a Firebase app.
**/
typedef AppMetadata = {
	/**
		The globally unique, Firebase-assigned identifier of the app.
	**/
	var appId : String;
	/**
		The optional user-assigned display name of the app.
	**/
	@:optional
	var displayName : String;
	/**
		The development platform of the app. Supporting Android and iOS app platforms.
	**/
	var platform : AppPlatform;
	/**
		The globally unique, user-assigned ID of the parent project for the app.
	**/
	var projectId : String;
	/**
		The fully-qualified resource name that identifies this app.
		
		This is useful when manually constructing requests for Firebase's public API.
	**/
	var resourceName : String;
};