component extends="Model" {

	function config() {
		hasOne("cart");
		
	validatesPresenceOf(
        properties="name,email,password");
		validatesLengthOf(properties="name", maximum=50);
		validatesUniquenessOf(property="email");
		validatesConfirmationOf(property="password");
	}
}
