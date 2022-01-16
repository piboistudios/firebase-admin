package firebase_admin.lib.auth.identifier;

/**
	Used for looking up an account by federated provider.
	
	See {@link BaseAuth.getUsers}.
**/
typedef ProviderIdentifier = {
	var providerId : String;
	var providerUid : String;
};