package firebase_admin.firestore;

/**
	A Timestamp represents a point in time independent of any time zone or
	calendar, represented as seconds and fractions of seconds at nanosecond
	resolution in UTC Epoch time. It is encoded using the Proleptic Gregorian
	Calendar which extends the Gregorian calendar backwards to year one. It is
	encoded assuming all minutes are 60 seconds long, i.e. leap seconds are
	"smeared" so that no leap second table is needed for interpretation. Range
	is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z.
**/
@:jsRequire("firebase-admin", "firestore.Timestamp") extern class Timestamp {
	/**
		Creates a new timestamp.
	**/
	function new(seconds:Float, nanoseconds:Float);
	/**
		The number of seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z.
	**/
	final seconds : Float;
	/**
		The non-negative fractions of a second at nanosecond resolution.
	**/
	final nanoseconds : Float;
	/**
		Returns a new `Date` corresponding to this timestamp. This may lose
		precision.
	**/
	function toDate():js.lib.Date;
	/**
		Returns the number of milliseconds since Unix epoch 1970-01-01T00:00:00Z.
	**/
	function toMillis():Float;
	/**
		Returns true if this `Timestamp` is equal to the provided one.
	**/
	function isEqual(other:Timestamp):Bool;
	/**
		Converts this object to a primitive `string`, which allows `Timestamp` objects to be compared
		using the `>`, `<=`, `>=` and `>` operators.
	**/
	function valueOf():String;
	static var prototype : Timestamp;
	/**
		Creates a new timestamp with the current date, with millisecond precision.
	**/
	static function now():Timestamp;
	/**
		Creates a new timestamp from the given date.
	**/
	static function fromDate(date:js.lib.Date):Timestamp;
	/**
		Creates a new timestamp from the given number of milliseconds.
	**/
	static function fromMillis(milliseconds:Float):Timestamp;
}