package firebase_admin.credential;

/**
	Interface that provides Google OAuth2 access tokens used to authenticate
	with Firebase services.
	
	In most cases, you will not need to implement this yourself and can instead
	use the default implementations provided by the `admin.credential` namespace.
**/
typedef Credential = firebase_admin.lib.app.index.Credential;