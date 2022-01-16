package firebase_admin.lib.auth.auth_config;

/**
	The server side SAML configuration request interface.
**/
typedef SAMLConfigServerRequest = {
	@:optional
	var idpConfig : {
		@:optional
		var idpEntityId : String;
		@:optional
		var ssoUrl : String;
		@:optional
		var idpCertificates : Array<{
			var x509Certificate : String;
		}>;
		@:optional
		var signRequest : Bool;
	};
	@:optional
	var spConfig : {
		@:optional
		var spEntityId : String;
		@:optional
		var callbackUri : String;
	};
	@:optional
	var displayName : String;
	@:optional
	var enabled : Bool;
};