package firebase_admin.lib.messaging.messaging_api;

typedef ApsAlert = {
	@:optional
	var title : String;
	@:optional
	var subtitle : String;
	@:optional
	var body : String;
	@:optional
	var locKey : String;
	@:optional
	var locArgs : Array<String>;
	@:optional
	var titleLocKey : String;
	@:optional
	var titleLocArgs : Array<String>;
	@:optional
	var subtitleLocKey : String;
	@:optional
	var subtitleLocArgs : Array<String>;
	@:optional
	var actionLocKey : String;
	@:optional
	var launchImage : String;
};