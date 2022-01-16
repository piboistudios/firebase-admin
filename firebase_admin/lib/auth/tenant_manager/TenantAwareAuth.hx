package firebase_admin.lib.auth.tenant_manager;

/**
	Tenant-aware `Auth` interface used for managing users, configuring SAML/OIDC providers,
	generating email links for password reset, email verification, etc for specific tenants.
	
	Multi-tenancy support requires Google Cloud's Identity Platform
	(GCIP). To learn more about GCIP, including pricing and features,
	see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	
	Each tenant contains its own identity providers, settings and sets of users.
	Using `TenantAwareAuth`, users for a specific tenant and corresponding OIDC/SAML
	configurations can also be managed, ID tokens for users signed in to a specific tenant
	can be verified, and email action links can also be generated for users belonging to the
	tenant.
	
	`TenantAwareAuth` instances for a specific `tenantId` can be instantiated by calling
	{@link TenantManager.authForTenant}.
**/
@:jsRequire("firebase-admin/lib/auth/tenant-manager", "TenantAwareAuth") extern class TenantAwareAuth extends firebase_admin.lib.auth.base_auth.BaseAuth {
	function new();
	/**
		The tenant identifier corresponding to this `TenantAwareAuth` instance.
		All calls to the user management APIs, OIDC/SAML provider management APIs, email link
		generation APIs, etc will only be applied within the scope of this tenant.
	**/
	final tenantId : String;
	static var prototype : TenantAwareAuth;
}