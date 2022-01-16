package firebase_admin.lib.project_management.android_app;

/**
	A SHA-1 or SHA-256 certificate.
	
	Do not call this constructor directly. Instead, use
	[`projectManagement.shaCertificate()`](projectManagement.ProjectManagement#shaCertificate).
**/
@:jsRequire("firebase-admin/lib/project-management/android-app", "ShaCertificate") extern class ShaCertificate {
	function new();
	final shaHash : String;
	@:optional
	final resourceName : String;
	/**
		The SHA certificate type.
	**/
	final certType : String;
	static var prototype : ShaCertificate;
}