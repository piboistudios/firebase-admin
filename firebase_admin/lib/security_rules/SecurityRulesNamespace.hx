package firebase_admin.lib.security_rules;

@:jsRequire("firebase-admin/lib/security-rules/security-rules-namespace") @valueModuleOnly extern class SecurityRulesNamespace {
	/**
		Gets the {@link firebase-admin.security-rules#SecurityRules} service for the default
		app or a given app.
		
		`admin.securityRules()` can be called with no arguments to access the
		default app's {@link firebase-admin.security-rules#SecurityRules}
		service, or as `admin.securityRules(app)` to access
		the {@link firebase-admin.security-rules#SecurityRules}
		service associated with a specific app.
	**/
	static function securityRules(?app:firebase_admin.lib.app.core.App):firebase_admin.lib.security_rules.security_rules.SecurityRules;
}