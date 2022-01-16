package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a Remote Config template version.
	Output only, except for the version description. Contains metadata about a particular
	version of the Remote Config template. All fields are set at the time the specified Remote
	Config template is published. A version's description field may be specified in
	`publishTemplate` calls.
**/
typedef Version = {
	/**
		The version number of a Remote Config template.
	**/
	@:optional
	var versionNumber : String;
	/**
		The timestamp of when this version of the Remote Config template was written to the
		Remote Config backend.
	**/
	@:optional
	var updateTime : String;
	/**
		The origin of the template update action.
	**/
	@:optional
	var updateOrigin : String;
	/**
		The type of the template update action.
	**/
	@:optional
	var updateType : String;
	/**
		Aggregation of all metadata fields about the account that performed the update.
	**/
	@:optional
	var updateUser : RemoteConfigUser;
	/**
		The user-provided description of the corresponding Remote Config template.
	**/
	@:optional
	var description : String;
	/**
		The version number of the Remote Config template that has become the current version
		due to a rollback. Only present if this version is the result of a rollback.
	**/
	@:optional
	var rollbackSource : String;
	/**
		Indicates whether this Remote Config template was published before version history was
		supported.
	**/
	@:optional
	var isLegacy : Bool;
};