package firebase_admin.lib.remote_config.remote_config;

/**
	The Firebase `RemoteConfig` service interface.
**/
@:jsRequire("firebase-admin/lib/remote-config/remote-config", "RemoteConfig") extern class RemoteConfig {
	function new();
	final app : firebase_admin.lib.app.core.App;
	private final client : Dynamic;
	/**
		Gets the current active version of the {@link RemoteConfigTemplate} of the project.
	**/
	function getTemplate():js.lib.Promise<firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate>;
	/**
		Gets the requested version of the {@link RemoteConfigTemplate} of the project.
	**/
	function getTemplateAtVersion(versionNumber:ts.AnyOf2<String, Float>):js.lib.Promise<firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate>;
	/**
		Validates a {@link RemoteConfigTemplate}.
	**/
	function validateTemplate(template:firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate):js.lib.Promise<firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate>;
	/**
		Publishes a Remote Config template.
	**/
	function publishTemplate(template:firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate, ?options:{ var force : Bool; }):js.lib.Promise<firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate>;
	/**
		Rolls back a project's published Remote Config template to the specified version.
		A rollback is equivalent to getting a previously published Remote Config
		template and re-publishing it using a force update.
	**/
	function rollback(versionNumber:ts.AnyOf2<String, Float>):js.lib.Promise<firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate>;
	/**
		Gets a list of Remote Config template versions that have been published, sorted in reverse
		chronological order. Only the last 300 versions are stored.
		All versions that correspond to non-active Remote Config templates (i.e., all except the
		template that is being fetched by clients) are also deleted if they are older than 90 days.
	**/
	function listVersions(?options:firebase_admin.lib.remote_config.remote_config_api.ListVersionsOptions):js.lib.Promise<firebase_admin.lib.remote_config.remote_config_api.ListVersionsResult>;
	/**
		Creates and returns a new Remote Config template from a JSON string.
	**/
	function createTemplateFromJSON(json:String):firebase_admin.lib.remote_config.remote_config_api.RemoteConfigTemplate;
	static var prototype : RemoteConfig;
}