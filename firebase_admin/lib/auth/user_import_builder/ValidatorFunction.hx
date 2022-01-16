package firebase_admin.lib.auth.user_import_builder;

/**
	Callback function to validate an UploadAccountUser object.
**/
typedef ValidatorFunction = (data:firebase_admin.UploadAccountUser) -> Void;