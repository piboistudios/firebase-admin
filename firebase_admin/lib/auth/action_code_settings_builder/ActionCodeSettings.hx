package firebase_admin.lib.auth.action_code_settings_builder;

/**
	This is the interface that defines the required continue/state URL with
	optional Android and iOS bundle identifiers.
**/
typedef ActionCodeSettings = {
	/**
		Defines the link continue/state URL, which has different meanings in
		different contexts:
		<ul>
		<li>When the link is handled in the web action widgets, this is the deep
		     link in the `continueUrl` query parameter.</li>
		<li>When the link is handled in the app directly, this is the `continueUrl`
		     query parameter in the deep link of the Dynamic Link.</li>
		</ul>
	**/
	var url : String;
	/**
		Whether to open the link via a mobile app or a browser.
		The default is false. When set to true, the action code link is sent
		as a Universal Link or Android App Link and is opened by the app if
		installed. In the false case, the code is sent to the web widget first
		and then redirects to the app if installed.
	**/
	@:optional
	var handleCodeInApp : Bool;
	/**
		Defines the iOS bundle ID. This will try to open the link in an iOS app if it
		is installed.
	**/
	@:optional
	var iOS : {
		/**
			Defines the required iOS bundle ID of the app where the link should be
			handled if the application is already installed on the device.
		**/
		var bundleId : String;
	};
	/**
		Defines the Android package name. This will try to open the link in an
		android app if it is installed. If `installApp` is passed, it specifies
		whether to install the Android app if the device supports it and the app is
		not already installed. If this field is provided without a `packageName`, an
		error is thrown explaining that the `packageName` must be provided in
		conjunction with this field. If `minimumVersion` is specified, and an older
		version of the app is installed, the user is taken to the Play Store to
		upgrade the app.
	**/
	@:optional
	var android : {
		/**
			Defines the required Android package name of the app where the link should be
			handled if the Android app is installed.
		**/
		var packageName : String;
		/**
			Whether to install the Android app if the device supports it and the app is
			not already installed.
		**/
		@:optional
		var installApp : Bool;
		/**
			The Android minimum version if available. If the installed app is an older
			version, the user is taken to the GOogle Play Store to upgrade the app.
		**/
		@:optional
		var minimumVersion : String;
	};
	/**
		Defines the dynamic link domain to use for the current link if it is to be
		opened using Firebase Dynamic Links, as multiple dynamic link domains can be
		configured per project. This field provides the ability to explicitly choose
		configured per project. This fields provides the ability explicitly choose
		one. If none is provided, the oldest domain is used by default.
	**/
	@:optional
	var dynamicLinkDomain : String;
};