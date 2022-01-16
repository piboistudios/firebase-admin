package firebase_admin.lib.auth.user_import_builder;

/**
	Interface representing the user import options needed for
	{@link BaseAuth.importUsers} method. This is used to
	provide the password hashing algorithm information.
**/
typedef UserImportOptions = {
	/**
		The password hashing information.
	**/
	var hash : {
		/**
			The password hashing algorithm identifier. The following algorithm
			identifiers are supported:
			`SCRYPT`, `STANDARD_SCRYPT`, `HMAC_SHA512`, `HMAC_SHA256`, `HMAC_SHA1`,
			`HMAC_MD5`, `MD5`, `PBKDF_SHA1`, `BCRYPT`, `PBKDF2_SHA256`, `SHA512`,
			`SHA256` and `SHA1`.
		**/
		var algorithm : HashAlgorithmType;
		/**
			The signing key used in the hash algorithm in buffer bytes.
			Required by hashing algorithms `SCRYPT`, `HMAC_SHA512`, `HMAC_SHA256`,
			`HAMC_SHA1` and `HMAC_MD5`.
		**/
		@:optional
		var key : global.Buffer;
		/**
			The salt separator in buffer bytes which is appended to salt when
			verifying a password. This is only used by the `SCRYPT` algorithm.
		**/
		@:optional
		var saltSeparator : global.Buffer;
		/**
			The number of rounds for hashing calculation.
			Required for `SCRYPT`, `MD5`, `SHA512`, `SHA256`, `SHA1`, `PBKDF_SHA1` and
			`PBKDF2_SHA256`.
		**/
		@:optional
		var rounds : Float;
		/**
			The memory cost required for `SCRYPT` algorithm, or the CPU/memory cost.
			Required for `STANDARD_SCRYPT` algorithm.
		**/
		@:optional
		var memoryCost : Float;
		/**
			The parallelization of the hashing algorithm. Required for the
			`STANDARD_SCRYPT` algorithm.
		**/
		@:optional
		var parallelization : Float;
		/**
			The block size (normally 8) of the hashing algorithm. Required for the
			`STANDARD_SCRYPT` algorithm.
		**/
		@:optional
		var blockSize : Float;
		/**
			The derived key length of the hashing algorithm. Required for the
			`STANDARD_SCRYPT` algorithm.
		**/
		@:optional
		var derivedKeyLength : Float;
	};
};