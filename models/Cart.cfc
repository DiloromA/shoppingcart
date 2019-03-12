component extends="Model" {

	function config() {
		belongsTo("customer");
        hasMany("products");
	}
}

