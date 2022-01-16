package firebase_admin.lib.auth.auth;

/**
	Auth service bound to the provided app.
	An Auth instance can have multiple tenants.
**/
@:jsRequire("firebase-admin/lib/auth/auth", "Auth") extern class Auth extends firebase_admin.lib.auth.base_auth.BaseAuth {
	function new();
	private final tenantManager_ : Dynamic;
	private final app_ : Dynamic;
	/**
		Returns the app associated with this Auth instance.
	**/
	final app : firebase_admin.lib.app.core.App;
	/**
		Returns the tenant manager instance associated with the current project.
	**/
	function tenantManager():firebase_admin.lib.auth.tenant_manager.TenantManager;
	static var prototype : Auth;
}