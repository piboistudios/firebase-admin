package firebase_admin;

@:jsRequire("firebase-admin", "credential") @valueModuleOnly extern class Credential {
	/**
		Returns a credential created from the
		{@link https://developers.google.com/identity/protocols/application-default-credentials |
		Google Application Default Credentials}
		that grants admin access to Firebase services. This credential can be used
		in the call to {@link firebase-admin.app#initializeApp}.
		
		Google Application Default Credentials are available on any Google
		infrastructure, such as Google App Engine and Google Compute Engine.
		
		See
		{@link https://firebase.google.com/docs/admin/setup#initialize_the_sdk | Initialize the SDK}
		for more details.
	**/
	static function applicationDefault(?httpAgent:node.http.Agent):firebase_admin.lib.app.index.Credential;
	/**
		Returns a credential created from the provided service account that grants
		admin access to Firebase services. This credential can be used in the call
		to {@link firebase-admin.app#initializeApp}.
		
		See
		{@link https://firebase.google.com/docs/admin/setup#initialize_the_sdk | Initialize the SDK}
		for more details.
	**/
	static function cert(serviceAccountPathOrObject:ts.AnyOf2<String, ServiceAccount>, ?httpAgent:node.http.Agent):firebase_admin.lib.app.index.Credential;
	/**
		Returns a credential created from the provided refresh token that grants
		admin access to Firebase services. This credential can be used in the call
		to {@link firebase-admin.app#initializeApp}.
		
		See
		{@link https://firebase.google.com/docs/admin/setup#initialize_the_sdk | Initialize the SDK}
		for more details.
	**/
	static function refreshToken(refreshTokenPathOrObject:ts.AnyOf2<String, Dynamic>, ?httpAgent:node.http.Agent):firebase_admin.lib.app.index.Credential;
}