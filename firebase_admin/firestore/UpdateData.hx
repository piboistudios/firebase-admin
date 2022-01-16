package firebase_admin.firestore;

/**
	Update data (for use with [update]{@link DocumentReference#update})
	that contains paths mapped to values. Fields that contain dots reference
	nested fields within the document.
	
	You can update a top-level field in your document by using the field name
	as a key (e.g. `foo`). The provided value completely replaces the contents
	for this field.
	
	You can also update a nested field directly by using its field path as a
	key (e.g. `foo.bar`). This nested field update replaces the contents at
	`bar` but does not modify other data under `foo`.
**/
typedef UpdateData = { };