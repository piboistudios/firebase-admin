package firebase_admin.lib.messaging.messaging_api;

/**
	Represents settings to control notification LED that can be included in
	{@link AndroidNotification}.
**/
typedef LightSettings = {
	/**
		Required. Sets color of the LED in `#rrggbb` or `#rrggbbaa` format.
	**/
	var color : String;
	/**
		Required. Along with `light_off_duration`, defines the blink rate of LED flashes.
	**/
	var lightOnDurationMillis : Float;
	/**
		Required. Along with `light_on_duration`, defines the blink rate of LED flashes.
	**/
	var lightOffDurationMillis : Float;
};