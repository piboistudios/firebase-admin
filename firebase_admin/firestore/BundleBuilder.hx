package firebase_admin.firestore;

/**
	Builds a Firestore data bundle with results from the given document and query snapshots.
**/
@:jsRequire("firebase-admin", "firestore.BundleBuilder") extern class BundleBuilder {
	function new();
	/**
		The ID of this bundle.
	**/
	final bundleId : String;
	/**
		Adds a Firestore `DocumentSnapshot` to the bundle. Both the documents data and the document
		read time will be included in the bundle.
		
		Adds a Firestore `QuerySnapshot` to the bundle. Both the documents in the query results and
		the query read time will be included in the bundle.
	**/
	@:overload(function<T>(queryName:String, querySnapshot:QuerySnapshot<T>):BundleBuilder { })
	function add<T>(documentSnapshot:DocumentSnapshot<T>):BundleBuilder;
	/**
		Builds the bundle and returns the result as a `Buffer` instance.
	**/
	function build():global.Buffer;
	static var prototype : BundleBuilder;
}