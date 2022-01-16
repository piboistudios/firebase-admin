package firebase_admin.lib.auth.auth_config;

/**
	The server side OIDC configuration request interface.
**/
typedef OIDCConfigServerRequest = {
	@:optional
	var clientId : String;
	@:optional
	var issuer : String;
	@:optional
	var displayName : String;
	@:optional
	var enabled : Bool;
	@:optional
	var clientSecret : String;
	@:optional
	var responseType : OAuthResponseType;
};