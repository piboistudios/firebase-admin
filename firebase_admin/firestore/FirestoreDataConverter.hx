package firebase_admin.firestore;

/**
	Converter used by `withConverter()` to transform user objects of type T
	into Firestore data.
	
	Using the converter allows you to specify generic type arguments when
	storing and retrieving objects from Firestore.
**/
typedef FirestoreDataConverter<T> = {
	/**
		Called by the Firestore SDK to convert a custom model object of type T
		into a plain Javascript object (suitable for writing directly to the
		Firestore database). To use set() with `merge` and `mergeFields`,
		toFirestore() must be defined with `Partial<T>`.
	**/
	@:overload(function(modelObject:T, options:SetOptions):DocumentData { })
	function toFirestore(modelObject:T):DocumentData;
	/**
		Called by the Firestore SDK to convert Firestore data into an object of
		type T.
	**/
	function fromFirestore(snapshot:QueryDocumentSnapshot<DocumentData>):T;
};