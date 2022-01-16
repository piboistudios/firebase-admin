package firebase_admin.lib.auth.identifier;

/**
	Used for looking up an account by uid.
	
	See {@link BaseAuth.getUsers}.
**/
typedef UidIdentifier = {
	var uid : String;
};