component extends="Model" {

	function config() {
		belongsTo("cart");
		
	validatesPresenceOf(
        properties="name,price,quantity");
		validatesLengthOf(properties="name", maximum=50);
		validatesNumericalityOf(property="price, quantity", onlyInteger=true);
		}
}
