package firebase_admin.lib.security_rules.security_rules;

/**
	Required metadata associated with a ruleset.
**/
typedef RulesetMetadata = {
	/**
		Name of the `Ruleset` as a short string. This can be directly passed into APIs
		like {@link SecurityRules.getRuleset} and {@link SecurityRules.deleteRuleset}.
	**/
	final name : String;
	/**
		Creation time of the `Ruleset` as a UTC timestamp string.
	**/
	final createTime : String;
};