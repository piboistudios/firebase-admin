package firebase_admin.lib.auth.tenant_manager;

/**
	Interface representing the object returned from a
	{@link TenantManager.listTenants}
	operation.
	Contains the list of tenants for the current batch and the next page token if available.
**/
typedef ListTenantsResult = {
	/**
		The list of {@link Tenant} objects for the downloaded batch.
	**/
	var tenants : Array<firebase_admin.lib.auth.tenant.Tenant>;
	/**
		The next page token if available. This is needed for the next batch download.
	**/
	@:optional
	var pageToken : String;
};