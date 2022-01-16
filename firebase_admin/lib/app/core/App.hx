package firebase_admin.lib.app.core;

/**
	A Firebase app holds the initialization information for a collection of
	services.
**/
typedef App = {
	/**
		The (read-only) name for this app.
		
		The default app's name is `"[DEFAULT]"`.
	**/
	var name : String;
	/**
		The (read-only) configuration options for this app. These are the original
		parameters given in {@link firebase-admin.app#initializeApp}.
	**/
	var options : firebase_admin.AppOptions;
};