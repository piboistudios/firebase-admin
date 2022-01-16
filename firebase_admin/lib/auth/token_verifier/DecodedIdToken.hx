package firebase_admin.lib.auth.token_verifier;

/**
	Interface representing a decoded Firebase ID token, returned from the
	{@link BaseAuth.verifyIdToken} method.
	
	Firebase ID tokens are OpenID Connect spec-compliant JSON Web Tokens (JWTs).
	See the
	[ID Token section of the OpenID Connect spec](http://openid.net/specs/openid-connect-core-1_0.html#IDToken)
	for more information about the specific properties below.
**/
typedef DecodedIdToken = {
	/**
		The audience for which this token is intended.
		
		This value is a string equal to your Firebase project ID, the unique
		identifier for your Firebase project, which can be found in [your project's
		settings](https://console.firebase.google.com/project/_/settings/general/android:com.random.android).
	**/
	var aud : String;
	/**
		Time, in seconds since the Unix epoch, when the end-user authentication
		occurred.
		
		This value is not set when this particular ID token was created, but when the
		user initially logged in to this session. In a single session, the Firebase
		SDKs will refresh a user's ID tokens every hour. Each ID token will have a
		different [`iat`](#iat) value, but the same `auth_time` value.
	**/
	var auth_time : Float;
	/**
		The email of the user to whom the ID token belongs, if available.
	**/
	@:optional
	var email : String;
	/**
		Whether or not the email of the user to whom the ID token belongs is
		verified, provided the user has an email.
	**/
	@:optional
	var email_verified : Bool;
	/**
		The ID token's expiration time, in seconds since the Unix epoch. That is, the
		time at which this ID token expires and should no longer be considered valid.
		
		The Firebase SDKs transparently refresh ID tokens every hour, issuing a new
		ID token with up to a one hour expiration.
	**/
	var exp : Float;
	/**
		Information about the sign in event, including which sign in provider was
		used and provider-specific identity details.
		
		This data is provided by the Firebase Authentication service and is a
		reserved claim in the ID token.
	**/
	var firebase : {
		/**
			Provider-specific identity details corresponding
			to the provider used to sign in the user.
		**/
		var identities : { };
		/**
			The ID of the provider used to sign in the user.
			One of `"anonymous"`, `"password"`, `"facebook.com"`, `"github.com"`,
			`"google.com"`, `"twitter.com"`, `"apple.com"`, `"microsoft.com"`,
			`"yahoo.com"`, `"phone"`, `"playgames.google.com"`, `"gc.apple.com"`,
			or `"custom"`.
			
			Additional Identity Platform provider IDs include `"linkedin.com"`,
			OIDC and SAML identity providers prefixed with `"saml."` and `"oidc."`
			respectively.
		**/
		var sign_in_provider : String;
		/**
			The type identifier or `factorId` of the second factor, provided the
			ID token was obtained from a multi-factor authenticated user.
			For phone, this is `"phone"`.
		**/
		@:optional
		var sign_in_second_factor : String;
		/**
			The `uid` of the second factor used to sign in, provided the
			ID token was obtained from a multi-factor authenticated user.
		**/
		@:optional
		var second_factor_identifier : String;
		/**
			The ID of the tenant the user belongs to, if available.
		**/
		@:optional
		var tenant : String;
	};
	/**
		The ID token's issued-at time, in seconds since the Unix epoch. That is, the
		time at which this ID token was issued and should start to be considered
		valid.
		
		The Firebase SDKs transparently refresh ID tokens every hour, issuing a new
		ID token with a new issued-at time. If you want to get the time at which the
		user session corresponding to the ID token initially occurred, see the
		[`auth_time`](#auth_time) property.
	**/
	var iat : Float;
	/**
		The issuer identifier for the issuer of the response.
		
		This value is a URL with the format
		`https://securetoken.google.com/<PROJECT_ID>`, where `<PROJECT_ID>` is the
		same project ID specified in the [`aud`](#aud) property.
	**/
	var iss : String;
	/**
		The phone number of the user to whom the ID token belongs, if available.
	**/
	@:optional
	var phone_number : String;
	/**
		The photo URL for the user to whom the ID token belongs, if available.
	**/
	@:optional
	var picture : String;
	/**
		The `uid` corresponding to the user who the ID token belonged to.
		
		As a convenience, this value is copied over to the [`uid`](#uid) property.
	**/
	var sub : String;
	/**
		The `uid` corresponding to the user who the ID token belonged to.
		
		This value is not actually in the JWT token claims itself. It is added as a
		convenience, and is set as the value of the [`sub`](#sub) property.
	**/
	var uid : String;
};