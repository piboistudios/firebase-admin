package firebase_admin.lib.auth.identifier;

/**
	Used for looking up an account by email.
	
	See {@link BaseAuth.getUsers}.
**/
typedef EmailIdentifier = {
	var email : String;
};