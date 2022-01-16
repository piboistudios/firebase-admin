package firebase_admin.lib.remote_config.remote_config_api;

/**
	Interface representing a Remote Config condition.
	A condition targets a specific group of users. A list of these conditions make up
	part of a Remote Config template.
**/
typedef RemoteConfigCondition = {
	/**
		A non-empty and unique name of this condition.
	**/
	var name : String;
	/**
		The logic of this condition.
		See the documentation on
		{@link https://firebase.google.com/docs/remote-config/condition-reference | condition expressions}
		for the expected syntax of this field.
	**/
	var expression : String;
	/**
		The color associated with this condition for display purposes in the Firebase Console.
		Not specifying this value results in the console picking an arbitrary color to associate
		with the condition.
	**/
	@:optional
	var tagColor : TagColor;
};