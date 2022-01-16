package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing an in-app-default value.
**/
typedef InAppDefaultValue = {
	/**
		If `true`, the parameter is omitted from the parameter values returned to a client.
	**/
	var useInAppDefault : Bool;
};