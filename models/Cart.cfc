component extends="Model" {

	function config() {
		belongsTo("customer");
        hasMany("products");
        
        validatesPresenceOf(
        properties="customer_id, product_id");
        validatesNumericalityOf(property="customer_id, product_id", onlyInteger=true);
	}
}

