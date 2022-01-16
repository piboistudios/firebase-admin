package firebase_admin.lib.project_management.android_app;

/**
	Metadata about a Firebase Android App.
**/
typedef AndroidAppMetadata = {
	/**
		The development platform of the app. Supporting Android and iOS app platforms.
	**/
	var platform : String;
	/**
		The canonical package name of the Android App, as would appear in the Google Play Developer
		Console.
	**/
	var packageName : String;
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