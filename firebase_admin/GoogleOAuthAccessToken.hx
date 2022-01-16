package firebase_admin;

/**
	Interface for Google OAuth 2.0 access tokens.
**/
typedef GoogleOAuthAccessToken = {
	var access_token : String;
	var expires_in : Float;
};