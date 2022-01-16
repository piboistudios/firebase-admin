package firebase_admin.firestore;

/**
	An immutable object representing a geo point in Firestore. The geo point
	is represented as latitude/longitude pair.
	
	Latitude values are in the range of [-90, 90].
	Longitude values are in the range of [-180, 180].
**/
@:jsRequire("firebase-admin", "firestore.GeoPoint") extern class GeoPoint {
	/**
		Creates a new immutable GeoPoint object with the provided latitude and
		longitude values.
	**/
	function new(latitude:Float, longitude:Float);
	final latitude : Float;
	final longitude : Float;
	/**
		Returns true if this `GeoPoint` is equal to the provided one.
	**/
	function isEqual(other:GeoPoint):Bool;
	static var prototype : GeoPoint;
}