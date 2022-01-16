package firebase_admin.lib.firestore;

@:jsRequire("firebase-admin/lib/firestore/firestore-namespace") @valueModuleOnly extern class FirestoreNamespace {
	static function firestore(?app:firebase_admin.lib.app.core.App):firebase_admin.firestore.Firestore;
}