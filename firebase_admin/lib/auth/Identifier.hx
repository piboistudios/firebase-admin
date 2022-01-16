package firebase_admin.lib.auth;

@:jsRequire("firebase-admin/lib/auth/identifier") @valueModuleOnly extern class Identifier {
	static function isUidIdentifier(id:firebase_admin.lib.auth.identifier.UserIdentifier):Bool;
	static function isEmailIdentifier(id:firebase_admin.lib.auth.identifier.UserIdentifier):Bool;
	static function isPhoneIdentifier(id:firebase_admin.lib.auth.identifier.UserIdentifier):Bool;
	static function isProviderIdentifier(id:firebase_admin.lib.auth.identifier.ProviderIdentifier):Bool;
}