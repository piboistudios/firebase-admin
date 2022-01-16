package firebase_admin.lib.auth.identifier;

/**
	Identifies a user to be looked up.
**/
typedef UserIdentifier = ts.AnyOf4<EmailIdentifier, PhoneIdentifier, ProviderIdentifier, UidIdentifier>;