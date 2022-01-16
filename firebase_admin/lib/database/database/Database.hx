package firebase_admin.lib.database.database;

/**
	The Firebase Database service interface. Extends the
	{@link https://firebase.google.com/docs/reference/js/firebase.database.Database | Database}
	interface provided by the `@firebase/database` package.
**/
typedef Database = {
	/**
		Gets the currently applied security rules as a string. The return value consists of
		the rules source including comments.
	**/
	function getRules():js.lib.Promise<String>;
	/**
		Gets the currently applied security rules as a parsed JSON object. Any comments in
		the original source are stripped away.
	**/
	function getRulesJSON():js.lib.Promise<Dynamic>;
	/**
		Sets the specified rules on the Firebase Realtime Database instance. If the rules source is
		specified as a string or a Buffer, it may include comments.
	**/
	function setRules(source:ts.AnyOf3<String, Dynamic, global.Buffer>):js.lib.Promise<ts.Undefined>;
	var app : firebase.app_types.FirebaseApp;
	function useEmulator(host:String, port:Float):Void;
	function goOffline():Void;
	function goOnline():Void;
	function ref(?path:ts.AnyOf2<String, firebase.database_types.Reference>):firebase.database_types.Reference;
	function refFromURL(url:String):firebase.database_types.Reference;
};