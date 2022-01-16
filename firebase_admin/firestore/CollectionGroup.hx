package firebase_admin.firestore;

/**
	A `CollectionGroup` refers to all documents that are contained in a
	collection or subcollection with a specific collection ID.
**/
@:jsRequire("firebase-admin", "firestore.CollectionGroup") extern class CollectionGroup<T> extends Query<T> {
	private function new();
	/**
		Partitions a query by returning partition cursors that can be used to run
		the query in parallel. The returned cursors are split points that can be
		used as starting and end points for individual query invocations.
	**/
	function getPartitions(desiredPartitionCount:Float):js.lib.AsyncIterable<QueryPartition<T>>;
	/**
		Applies a custom data converter to this `CollectionGroup`, allowing you
		to use your own custom model objects with Firestore. When you call get()
		on the returned `CollectionGroup`, the provided converter will convert
		between Firestore data and your custom type U.
		
		Using the converter allows you to specify generic type arguments when
		storing and retrieving objects from Firestore.
	**/
	@:overload(function(converter:Dynamic):CollectionGroup<DocumentData> { })
	function withConverter<U>(converter:FirestoreDataConverter<U>):CollectionGroup<U>;
	static var prototype : CollectionGroup<Dynamic>;
}