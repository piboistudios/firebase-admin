package firebase_admin.lib.security_rules.security_rules;

/**
	A set of Firebase security rules.
**/
@:jsRequire("firebase-admin/lib/security-rules/security-rules", "Ruleset") extern class Ruleset {
	function new();
	/**
		{@inheritdoc RulesetMetadata.name}
	**/
	final name : String;
	/**
		{@inheritdoc RulesetMetadata.createTime}
	**/
	final createTime : String;
	final source : Array<RulesFile>;
	static var prototype : Ruleset;
}