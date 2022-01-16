package firebase_admin.lib.auth.base_auth;

/**
	Interface representing the session cookie options needed for the
	{@link BaseAuth.createSessionCookie} method.
**/
typedef SessionCookieOptions = {
	/**
		The session cookie custom expiration in milliseconds. The minimum allowed is
		5 minutes and the maxium allowed is 2 weeks.
	**/
	var expiresIn : Float;
};