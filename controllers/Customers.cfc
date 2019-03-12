component extends="Controller" {

	function config() {
		verifies(except="index,new,create", params="key", paramsTypes="integer", handler="objectNotFound");
	}

	/**
	* View all Customers
	**/
	function index() {
		customers=model("customer").findAll();
	}

	/**
	* View Customer
	**/
	function show() {
		customer=model("customer").findByKey(params.key);
	}

	/**
	* Add New Customer
	**/
	function new() {
		customer=model("customer").new();
	}

	/**
	* Create Customer
	**/
	function create() {
		customer=model("customer").create(params.customer);
		if(customer.hasErrors()){
			renderView(action="new");
		} else {
			redirectTo(action="index", success="Customer successfully created");
		}
	}


	/**
	* Edit Customer
	**/
	function edit() {
		customer=model("customer").findByKey(params.key);
	}

	/**
	* Update Customer
	**/
	function update() {
		customer=model("customer").findByKey(params.key);
		if(customer.update(params.customer)){
			redirectTo(action="index", success="Customer successfully updated");
		} else {
			renderView(action="edit");
		}
	}

	/**
	* Delete Customer
	**/
	function delete() {
		customer=model("customer").deleteByKey(params.key);
		redirectTo(action="index", success="Customer successfully deleted");
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	function objectNotFound() {
		redirectTo(action="index", error="That Customer wasn't found");
	}

}
