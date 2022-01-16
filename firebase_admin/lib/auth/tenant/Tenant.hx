package firebase_admin.lib.auth.tenant;

/**
	Represents a tenant configuration.
	
	Multi-tenancy support requires Google Cloud's Identity Platform
	(GCIP). To learn more about GCIP, including pricing and features,
	see the {@link https://cloud.google.com/identity-platform | GCIP documentation}.
	
	Before multi-tenancy can be used on a Google Cloud Identity Platform project,
	tenants must be allowed on that project via the Cloud Console UI.
	
	A tenant configuration provides information such as the display name, tenant
	identifier and email authentication configuration.
	For OIDC/SAML provider configuration management, `TenantAwareAuth` instances should
	be used instead of a `Tenant` to retrieve the list of configured IdPs on a tenant.
	When configuring these providers, note that tenants will inherit
	whitelisted domains and authenticated redirect URIs of their parent project.
	
	All other settings of a tenant will also be inherited. These will need to be managed
	from the Cloud Console UI.
**/
@:jsRequire("firebase-admin/lib/auth/tenant", "Tenant") extern class Tenant {
	function new();
	/**
		The tenant identifier.
	**/
	final tenantId : String;
	/**
		The tenant display name.
	**/
	@:optional
	final displayName : String;
	final anonymousSignInEnabled : Bool;
	/**
		The map containing the test phone number / code pairs for the tenant.
	**/
	@:optional
	final testPhoneNumbers : { };
	@:optional
	private final emailSignInConfig_ : Dynamic;
	@:optional
	private final multiFactorConfig_ : Dynamic;
	/**
		The email sign in provider configuration.
	**/
	final emailSignInConfig : Null<firebase_admin.lib.auth.auth_config.EmailSignInProviderConfig>;
	/**
		The multi-factor auth configuration on the current tenant.
	**/
	final multiFactorConfig : Null<firebase_admin.lib.auth.auth_config.MultiFactorConfig>;
	/**
		Returns a JSON-serializable representation of this object.
	**/
	function toJSON():Dynamic;
	static var prototype : Tenant;
	/**
		Validates a tenant options object. Throws an error on failure.
	**/
	private static var validate : Dynamic;
}