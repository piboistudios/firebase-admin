package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a Remote Config template.
**/
typedef RemoteConfigTemplate = {
	/**
		A list of conditions in descending order by priority.
	**/
	var conditions : Array<RemoteConfigCondition>;
	/**
		Map of parameter keys to their optional default values and optional conditional values.
	**/
	var parameters : { };
	/**
		Map of parameter group names to their parameter group objects.
		A group's name is mutable but must be unique among groups in the Remote Config template.
		The name is limited to 256 characters and intended to be human-readable. Any Unicode
		characters are allowed.
	**/
	var parameterGroups : { };
	/**
		ETag of the current Remote Config template (readonly).
	**/
	final etag : String;
	/**
		Version information for the current Remote Config template.
	**/
	@:optional
	var version : Version;
};