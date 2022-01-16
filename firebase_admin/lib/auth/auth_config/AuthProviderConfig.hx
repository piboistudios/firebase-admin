package firebase_admin.lib.auth.auth_config;

/**
	The Auth provider configuration type.
	{@link BaseAuth.createProviderConfig}.
**/
typedef AuthProviderConfig = ts.AnyOf2<SAMLAuthProviderConfig, OIDCAuthProviderConfig>;