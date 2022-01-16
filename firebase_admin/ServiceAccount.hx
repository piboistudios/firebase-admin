package firebase_admin;

typedef ServiceAccount = {
	@:optional
	var projectId : String;
	@:optional
	var clientEmail : String;
	@:optional
	var privateKey : String;
};