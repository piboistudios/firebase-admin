package firebase_admin.lib.project_management.ios_app;

/**
	Metadata about a Firebase iOS App.
**/
typedef IosAppMetadata = {
	/**
		The development platform of the app. Supporting Android and iOS app platforms.
	**/
	var platform : String;
	/**
		The canonical bundle ID of the iOS App as it would appear in the iOS App Store.
	**/
	var bundleId : String;
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
		The globally unique, user-assigned ID of the parent project for the app.
	**/
	var projectId : String;
	/**
		The fully-qualified resource name that identifies this app.
		
		This is useful when manually constructing requests for Firebase's public API.
	**/
	var resourceName : String;
};