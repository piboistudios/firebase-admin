package firebase_admin.lib.security_rules.security_rules;

/**
	The Firebase `SecurityRules` service interface.
**/
@:jsRequire("firebase-admin/lib/security-rules/security-rules", "SecurityRules") extern class SecurityRules {
	function new();
	final app : firebase_admin.lib.app.core.App;
	private final client : Dynamic;
	/**
		Gets the {@link Ruleset} identified by the given
		name. The input name should be the short name string without the project ID
		prefix. For example, to retrieve the `projects/project-id/rulesets/my-ruleset`,
		pass the short name "my-ruleset". Rejects with a `not-found` error if the
		specified `Ruleset` cannot be found.
	**/
	function getRuleset(name:String):js.lib.Promise<Ruleset>;
	/**
		Gets the {@link Ruleset} currently applied to
		Cloud Firestore. Rejects with a `not-found` error if no ruleset is applied
		on Firestore.
	**/
	function getFirestoreRuleset():js.lib.Promise<Ruleset>;
	/**
		Creates a new {@link Ruleset} from the given
		source, and applies it to Cloud Firestore.
	**/
	function releaseFirestoreRulesetFromSource(source:ts.AnyOf2<String, global.Buffer>):js.lib.Promise<Ruleset>;
	/**
		Applies the specified {@link Ruleset} ruleset
		to Cloud Firestore.
	**/
	function releaseFirestoreRuleset(ruleset:ts.AnyOf2<String, RulesetMetadata>):js.lib.Promise<ts.Undefined>;
	/**
		Gets the {@link Ruleset} currently applied to a
		Cloud Storage bucket. Rejects with a `not-found` error if no ruleset is applied
		on the bucket.
	**/
	function getStorageRuleset(?bucket:String):js.lib.Promise<Ruleset>;
	/**
		Creates a new {@link Ruleset} from the given
		source, and applies it to a Cloud Storage bucket.
	**/
	function releaseStorageRulesetFromSource(source:ts.AnyOf2<String, global.Buffer>, ?bucket:String):js.lib.Promise<Ruleset>;
	/**
		Applies the specified {@link Ruleset} ruleset
		to a Cloud Storage bucket.
	**/
	function releaseStorageRuleset(ruleset:ts.AnyOf2<String, RulesetMetadata>, ?bucket:String):js.lib.Promise<ts.Undefined>;
	/**
		Creates a {@link RulesFile} with the given name
		and source. Throws an error if any of the arguments are invalid. This is a local
		operation, and does not involve any network API calls.
	**/
	function createRulesFileFromSource(name:String, source:ts.AnyOf2<String, global.Buffer>):RulesFile;
	/**
		Creates a new {@link Ruleset} from the given {@link RulesFile}.
	**/
	function createRuleset(file:RulesFile):js.lib.Promise<Ruleset>;
	/**
		Deletes the {@link Ruleset} identified by the given
		name. The input name should be the short name string without the project ID
		prefix. For example, to delete the `projects/project-id/rulesets/my-ruleset`,
		pass the  short name "my-ruleset". Rejects with a `not-found` error if the
		specified `Ruleset` cannot be found.
	**/
	function deleteRuleset(name:String):js.lib.Promise<ts.Undefined>;
	/**
		Retrieves a page of ruleset metadata.
	**/
	function listRulesetMetadata(?pageSize:Float, ?nextPageToken:String):js.lib.Promise<RulesetMetadataList>;
	private var getRulesetForRelease : Dynamic;
	private var releaseRuleset : Dynamic;
	private var getBucketName : Dynamic;
	static var prototype : SecurityRules;
	private static final CLOUD_FIRESTORE : Dynamic;
	private static final FIREBASE_STORAGE : Dynamic;
}