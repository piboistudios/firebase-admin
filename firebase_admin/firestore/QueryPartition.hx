package firebase_admin.firestore;

/**
	A split point that can be used in a query as a starting and/or end point for
	the query results. The cursors returned by {@link #startAt} and {@link
	#endBefore} can only be used in a query that matches the constraint of query
	that produced this partition.
**/
@:jsRequire("firebase-admin", "firestore.QueryPartition") extern class QueryPartition<T> {
	private function new();
	/**
		The cursor that defines the first result for this partition or
		`undefined` if this is the first partition.  The cursor value must be
		destructured when passed to `startAt()` (for example with
		`query.startAt(...queryPartition.startAt)`).
	**/
	final startAt : Null<Array<Any>>;
	/**
		The cursor that defines the first result after this partition or
		`undefined` if this is the last partition.  The cursor value must be
		destructured when passed to `endBefore()` (for example with
		`query.endBefore(...queryPartition.endBefore)`).
	**/
	final endBefore : Null<Array<Any>>;
	/**
		Returns a query that only returns the documents for this partition.
	**/
	function toQuery():Query<T>;
	static var prototype : QueryPartition<Dynamic>;
}