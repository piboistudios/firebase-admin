package firebase_admin.lib.database.database;

@:jsRequire("firebase-admin/lib/database/database", "DatabaseService") extern class DatabaseService {
	function new(app:firebase_admin.lib.app.core.App);
	private final appInternal : Dynamic;
	private var tokenListener : Dynamic;
	private var tokenRefreshTimeout : Dynamic;
	private var databases : Dynamic;
	private final firebaseApp : Dynamic;
	/**
		Returns the app associated with this DatabaseService instance.
	**/
	final app : firebase_admin.lib.app.core.App;
	function getDatabase(?url:String):Database;
	private var onTokenChange : Dynamic;
	private var scheduleTokenRefresh : Dynamic;
	private var ensureUrl : Dynamic;
	static var prototype : DatabaseService;
}