package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a Remote Config parameter group.
	Grouping parameters is only for management purposes and does not affect client-side
	fetching of parameter values.
**/
typedef RemoteConfigParameterGroup = {
	/**
		A description for the group. Its length must be less than or equal to 256 characters.
		A description may contain any Unicode characters.
	**/
	@:optional
	var description : String;
	/**
		Map of parameter keys to their optional default values and optional conditional values for
		parameters that belong to this group. A parameter only appears once per
		Remote Config template. An ungrouped parameter appears at the top level, whereas a
		parameter organized within a group appears within its group's map of parameters.
	**/
	var parameters : { };
};