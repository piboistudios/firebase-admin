package firebase_admin.lib.auth.auth_config;

/**
	The email sign in provider configuration.
**/
typedef EmailSignInProviderConfig = {
	/**
		Whether email provider is enabled.
	**/
	var enabled : Bool;
	/**
		Whether password is required for email sign-in. When not required,
		email sign-in can be performed with password or via email link sign-in.
	**/
	@:optional
	var passwordRequired : Bool;
};