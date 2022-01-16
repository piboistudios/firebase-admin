package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a list of Remote Config template versions.
**/
typedef ListVersionsResult = {
	/**
		A list of version metadata objects, sorted in reverse chronological order.
	**/
	var versions : Array<Version>;
	/**
		Token to retrieve the next page of results, or empty if there are no more results
		in the list.
	**/
	@:optional
	var nextPageToken : String;
};