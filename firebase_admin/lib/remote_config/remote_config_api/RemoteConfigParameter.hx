package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a Remote Config parameter.
	At minimum, a `defaultValue` or a `conditionalValues` entry must be present for the
	parameter to have any effect.
**/
typedef RemoteConfigParameter = {
	/**
		The value to set the parameter to, when none of the named conditions evaluate to `true`.
	**/
	@:optional
	var defaultValue : RemoteConfigParameterValue;
	/**
		A `(condition name, value)` map. The condition name of the highest priority
		(the one listed first in the Remote Config template's conditions list) determines the value of
		this parameter.
	**/
	@:optional
	var conditionalValues : { };
	/**
		A description for this parameter. Should not be over 100 characters and may contain any
		Unicode characters.
	**/
	@:optional
	var description : String;
	/**
		The data type for all values of this parameter in the current version of the template.
		Defaults to `ParameterValueType.STRING` if unspecified.
	**/
	@:optional
	var valueType : ParameterValueType;
};