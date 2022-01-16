package firebase_admin.lib.auth;

@:jsRequire("firebase-admin/lib/auth/user-import-builder") @valueModuleOnly extern class UserImportBuilder {
	/**
		Converts a client format second factor object to server format.
	**/
	static function convertMultiFactorInfoToServerFormat(multiFactorInfo:firebase_admin.lib.auth.auth_config.UpdatePhoneMultiFactorInfoRequest):firebase_admin.lib.auth.user_import_builder.AuthFactorInfo;
}