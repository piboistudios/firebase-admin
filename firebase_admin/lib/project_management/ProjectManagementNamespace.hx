package firebase_admin.lib.project_management;

@:jsRequire("firebase-admin/lib/project-management/project-management-namespace") @valueModuleOnly extern class ProjectManagementNamespace {
	/**
		Gets the {@link firebase-admin.project-management#ProjectManagement} service for the
		default app or a given app.
		
		`admin.projectManagement()` can be called with no arguments to access the
		default app's `ProjectManagement` service, or as `admin.projectManagement(app)` to access
		the `ProjectManagement` service associated with a specific app.
	**/
	static function projectManagement(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.project_management.project_management.ProjectManagement;
}