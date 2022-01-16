package firebase_admin.lib.auth.user_import_builder;

/**
	UploadAccount endpoint complete request interface.
**/
typedef UploadAccountRequest = {
	@:optional
	var users : Array<firebase_admin.UploadAccountUser>;
	@:optional
	var hashAlgorithm : String;
	@:optional
	var signerKey : String;
	@:optional
	var rounds : Float;
	@:optional
	var memoryCost : Float;
	@:optional
	var saltSeparator : String;
	@:optional
	var cpuMemCost : Float;
	@:optional
	var parallelization : Float;
	@:optional
	var blockSize : Float;
	@:optional
	var dkLen : Float;
};