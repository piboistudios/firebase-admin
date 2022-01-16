package firebase_admin.lib.auth.tenant_manager;

/**
	Defines the tenant manager used to help manage tenant related operations.
	This includes:
	<ul>
	<li>The ability to create, update, list, get and delete tenants for the underlying
	     project.</li>
	<li>Getting a `TenantAwareAuth` instance for running Auth related operations
	     (user management, provider configuration management, token verification,
	     email link generation, etc) in the context of a specified tenant.</li>
	</ul>
**/
@:jsRequire("firebase-admin/lib/auth/tenant-manager", "TenantManager") extern class TenantManager {
	function new();
	private final app : Dynamic;
	private final authRequestHandler : Dynamic;
	private final tenantsMap : Dynamic;
	/**
		Returns a `TenantAwareAuth` instance bound to the given tenant ID.
	**/
	function authForTenant(tenantId:String):TenantAwareAuth;
	/**
		Gets the tenant configuration for the tenant corresponding to a given `tenantId`.
	**/
	function getTenant(tenantId:String):js.lib.Promise<firebase_admin.lib.auth.tenant.Tenant>;
	/**
		Retrieves a list of tenants (single batch only) with a size of `maxResults`
		starting from the offset as specified by `pageToken`. This is used to
		retrieve all the tenants of a specified project in batches.
	**/
	function listTenants(?maxResults:Float, ?pageToken:String):js.lib.Promise<ListTenantsResult>;
	/**
		Deletes an existing tenant.
	**/
	function deleteTenant(tenantId:String):js.lib.Promise<ts.Undefined>;
	/**
		Creates a new tenant.
		When creating new tenants, tenants that use separate billing and quota will require their
		own project and must be defined as `full_service`.
	**/
	function createTenant(tenantOptions:firebase_admin.lib.auth.tenant.UpdateTenantRequest):js.lib.Promise<firebase_admin.lib.auth.tenant.Tenant>;
	/**
		Updates an existing tenant configuration.
	**/
	function updateTenant(tenantId:String, tenantOptions:firebase_admin.lib.auth.tenant.UpdateTenantRequest):js.lib.Promise<firebase_admin.lib.auth.tenant.Tenant>;
	static var prototype : TenantManager;
}