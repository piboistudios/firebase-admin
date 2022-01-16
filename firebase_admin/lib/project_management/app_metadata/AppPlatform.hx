package firebase_admin.lib.project_management.app_metadata;

/**
	Platforms with which a Firebase App can be associated.
**/
@:jsRequire("firebase-admin/lib/project-management/app-metadata", "AppPlatform") @:enum extern abstract AppPlatform(String) from String to String {
	/**
		Unknown state. This is only used for distinguishing unset values.
	**/
	var PLATFORM_UNKNOWN;
	/**
		The Firebase App is associated with iOS.
	**/
	var IOS;
	/**
		The Firebase App is associated with Android.
	**/
	var ANDROID;
}