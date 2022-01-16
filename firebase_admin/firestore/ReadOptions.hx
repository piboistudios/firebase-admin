package firebase_admin.firestore;

/**
	An options object that can be used to configure the behavior of `getAll()`
	calls. By providing a `fieldMask`, these calls can be configured to only
	return a subset of fields.
**/
typedef ReadOptions = {
	/**
		Specifies the set of fields to return and reduces the amount of data
		transmitted by the backend.
		
		Adding a field mask does not filter results. Documents do not need to
		contain values for all the fields in the mask to be part of the result
		set.
	**/
	@:optional
	final fieldMask : Array<ts.AnyOf2<String, FieldPath>>;
};