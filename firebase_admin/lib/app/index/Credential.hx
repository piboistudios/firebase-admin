package firebase_admin.lib.app.index;

/**
	Interface that provides Google OAuth2 access tokens used to authenticate
	with Firebase services.
	
	In most cases, you will not need to implement this yourself and can instead
	use the default implementations provided by the `firebase-admin/app` module.
**/
typedef Credential = {
	/**
		Returns a Google OAuth2 access token object used to authenticate with
		Firebase services.
	**/
	function getAccessToken():js.lib.Promise<firebase_admin.GoogleOAuthAccessToken>;
};