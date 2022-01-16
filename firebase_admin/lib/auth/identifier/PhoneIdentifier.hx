package firebase_admin.lib.auth.identifier;

/**
	Used for looking up an account by phone number.
	
	See {@link BaseAuth.getUsers}.
**/
typedef PhoneIdentifier = {
	var phoneNumber : String;
};