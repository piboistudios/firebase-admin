package firebase_admin;

/**
	Gets the {@link firebase-admin.database#Database} service for the default
	app or a given app.
	
	`admin.database()` can be called with no arguments to access the default
	app's `Database` service or as `admin.database(app)` to access the
	`Database` service associated with a specific app.
	
	`admin.database` is also a namespace that can be used to access global
	constants and methods associated with the `Database` service.
**/
@:jsRequire("firebase-admin", "database") @valueModuleOnly extern class Database {
	/**
		Gets the {@link firebase-admin.database#Database} service for the default
		app or a given app.
		
		`admin.database()` can be called with no arguments to access the default
		app's `Database` service or as `admin.database(app)` to access the
		`Database` service associated with a specific app.
		
		`admin.database` is also a namespace that can be used to access global
		constants and methods associated with the `Database` service.
	**/
	@:selfCall
	static function call(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.database.database.Database;
	/**
		{@link https://firebase.google.com/docs/reference/js/firebase.database#enablelogging | enableLogging}
		function from the `@firebase/database` package.
	**/
	static function enableLogging(?logger:ts.AnyOf2<Bool, (a:String) -> Dynamic>, ?persistent:Bool):Dynamic;
	/**
		{@link https://firebase.google.com/docs/reference/js/firebase.database.ServerValue | ServerValue}
		constant from the `@firebase/database` package.
	**/
	static final ServerValue : firebase.database_types.index.ServerValue;
}