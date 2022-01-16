package firebase_admin.lib.remote_config.remote_config_api;

/**
	Type representing a Remote Config parameter value.
	A `RemoteConfigParameterValue` could be either an `ExplicitParameterValue` or
	an `InAppDefaultValue`.
**/
typedef RemoteConfigParameterValue = ts.AnyOf2<ExplicitParameterValue, InAppDefaultValue>;