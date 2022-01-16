package firebase_admin.lib.security_rules.security_rules;

/**
	A page of ruleset metadata.
**/
@:jsRequire("firebase-admin/lib/security-rules/security-rules", "RulesetMetadataList") extern class RulesetMetadataList {
	function new();
	/**
		A batch of ruleset metadata.
	**/
	final rulesets : Array<RulesetMetadata>;
	/**
		The next page token if available. This is needed to retrieve the next batch.
	**/
	@:optional
	final nextPageToken : String;
	static var prototype : RulesetMetadataList;
}