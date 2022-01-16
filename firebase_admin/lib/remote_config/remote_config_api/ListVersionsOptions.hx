package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing options for Remote Config list versions operation.
**/
typedef ListVersionsOptions = {
	/**
		The maximum number of items to return per page.
	**/
	@:optional
	var pageSize : Float;
	/**
		The `nextPageToken` value returned from a previous list versions request, if any.
	**/
	@:optional
	var pageToken : String;
	/**
		Specifies the newest version number to include in the results.
		If specified, must be greater than zero. Defaults to the newest version.
	**/
	@:optional
	var endVersionNumber : ts.AnyOf2<String, Float>;
	/**
		Specifies the earliest update time to include in the results. Any entries updated before this
		time are omitted.
	**/
	@:optional
	var startTime : ts.AnyOf2<String, js.lib.Date>;
	/**
		Specifies the latest update time to include in the results. Any entries updated on or after
		this time are omitted.
	**/
	@:optional
	var endTime : ts.AnyOf2<String, js.lib.Date>;
};