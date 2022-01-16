package firebase_admin.lib.auth.auth_config;

/**
	The server side email configuration request interface.
**/
typedef EmailSignInConfigServerRequest = {
	@:optional
	var allowPasswordSignup : Bool;
	@:optional
	var enableEmailLinkSignin : Bool;
};