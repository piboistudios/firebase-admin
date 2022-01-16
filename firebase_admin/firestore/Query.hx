package firebase_admin.firestore;

/**
	A `Query` refers to a Query which you can read or listen to. You can also
	construct refined `Query` objects by adding filters and ordering.
**/
@:jsRequire("firebase-admin", "firestore.Query") extern class Query<T> {
	private function new();
	/**
		The `Firestore` for the Firestore database (useful for performing
		transactions, etc.).
	**/
	final firestore : Firestore;
	/**
		Creates and returns a new Query with the additional filter that documents
		must contain the specified field and that its value should satisfy the
		relation constraint provided.
		
		This function returns a new (immutable) instance of the Query (rather
		than modify the existing instance) to impose the filter.
	**/
	function where(fieldPath:ts.AnyOf2<String, FieldPath>, opStr:WhereFilterOp, value:Dynamic):Query<T>;
	/**
		Creates and returns a new Query that's additionally sorted by the
		specified field, optionally in descending order instead of ascending.
		
		This function returns a new (immutable) instance of the Query (rather
		than modify the existing instance) to impose the order.
	**/
	function orderBy(fieldPath:ts.AnyOf2<String, FieldPath>, ?directionStr:OrderByDirection):Query<T>;
	/**
		Creates and returns a new Query that only returns the first matching
		documents.
		
		This function returns a new (immutable) instance of the Query (rather
		than modify the existing instance) to impose the limit.
	**/
	function limit(limit:Float):Query<T>;
	/**
		Creates and returns a new Query that only returns the last matching
		documents.
		
		You must specify at least one orderBy clause for limitToLast queries,
		otherwise an exception will be thrown during execution.
		
		Results for limitToLast queries cannot be streamed via the `stream()`
		API.
	**/
	function limitToLast(limit:Float):Query<T>;
	/**
		Specifies the offset of the returned results.
		
		This function returns a new (immutable) instance of the Query (rather
		than modify the existing instance) to impose the offset.
	**/
	function offset(offset:Float):Query<T>;
	/**
		Creates and returns a new Query instance that applies a field mask to
		the result and returns only the specified subset of fields. You can
		specify a list of field paths to return, or use an empty list to only
		return the references of matching documents.
		
		Queries that contain field masks cannot be listened to via `onSnapshot()`
		listeners.
		
		This function returns a new (immutable) instance of the Query (rather
		than modify the existing instance) to impose the field mask.
	**/
	function select(field:haxe.extern.Rest<ts.AnyOf2<String, FieldPath>>):Query<DocumentData>;
	/**
		Creates and returns a new Query that starts at the provided document
		(inclusive). The starting position is relative to the order of the query.
		The document must contain all of the fields provided in the orderBy of
		this query.
		
		Creates and returns a new Query that starts at the provided fields
		relative to the order of the query. The order of the field values
		must match the order of the order by clauses of the query.
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function startAt(snapshot:DocumentSnapshot<Dynamic>):Query<T>;
	/**
		Creates and returns a new Query that starts after the provided document
		(exclusive). The starting position is relative to the order of the query.
		The document must contain all of the fields provided in the orderBy of
		this query.
		
		Creates and returns a new Query that starts after the provided fields
		relative to the order of the query. The order of the field values
		must match the order of the order by clauses of the query.
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function startAfter(snapshot:DocumentSnapshot<Dynamic>):Query<T>;
	/**
		Creates and returns a new Query that ends before the provided document
		(exclusive). The end position is relative to the order of the query. The
		document must contain all of the fields provided in the orderBy of this
		query.
		
		Creates and returns a new Query that ends before the provided fields
		relative to the order of the query. The order of the field values
		must match the order of the order by clauses of the query.
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function endBefore(snapshot:DocumentSnapshot<Dynamic>):Query<T>;
	/**
		Creates and returns a new Query that ends at the provided document
		(inclusive). The end position is relative to the order of the query. The
		document must contain all of the fields provided in the orderBy of this
		query.
		
		Creates and returns a new Query that ends at the provided fields
		relative to the order of the query. The order of the field values
		must match the order of the order by clauses of the query.
	**/
	@:overload(function(fieldValues:haxe.extern.Rest<Dynamic>):Query<T> { })
	function endAt(snapshot:DocumentSnapshot<Dynamic>):Query<T>;
	/**
		Executes the query and returns the results as a `QuerySnapshot`.
	**/
	function get():js.lib.Promise<QuerySnapshot<T>>;
	function stream():global.nodejs.ReadableStream;
	/**
		Attaches a listener for `QuerySnapshot `events.
	**/
	function onSnapshot(onNext:(snapshot:QuerySnapshot<T>) -> Void, ?onError:(error:js.lib.Error) -> Void):() -> Void;
	/**
		Returns true if this `Query` is equal to the provided one.
	**/
	function isEqual(other:Query<T>):Bool;
	/**
		Applies a custom data converter to this Query, allowing you to use your
		own custom model objects with Firestore. When you call get() on the
		returned Query, the provided converter will convert between Firestore
		data and your custom type U.
	**/
	@:overload(function(converter:Dynamic):Query<DocumentData> { })
	function withConverter<U>(converter:FirestoreDataConverter<U>):Query<U>;
	static var prototype : Query<Dynamic>;
}