package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a Remote Config user.
**/
typedef RemoteConfigUser = {
	/**
		Email address. Output only.
	**/
	var email : String;
	/**
		Display name. Output only.
	**/
	@:optional
	var name : String;
	/**
		Image URL. Output only.
	**/
	@:optional
	var imageUrl : String;
};