package firebase_admin.firestore;

/**
	A WriteResult wraps the write time set by the Firestore servers on `sets()`,
	`updates()`, and `creates()`.
**/
@:jsRequire("firebase-admin", "firestore.WriteResult") extern class WriteResult {
	private function new();
	/**
		The write time as set by the Firestore servers.
	**/
	final writeTime : Timestamp;
	/**
		Returns true if this `WriteResult` is equal to the provided one.
	**/
	function isEqual(other:WriteResult):Bool;
	static var prototype : WriteResult;
}