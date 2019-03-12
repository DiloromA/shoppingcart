component extends="Controller" {

	function config() {
		verifies(except="index,new,create", params="key", paramsTypes="integer", handler="objectNotFound");
	}

	/**
	* View all Carts
	**/
	function index() {
		carts=model("cart").findAll();
	}

	/**
	* View Cart
	**/
	function show() {
		cart=model("cart").findByKey(params.key);
	}

	/**
	* Add New Cart
	**/
	function new() {
		cart=model("cart").new();
	}

	/**
	* Create Cart
	**/
	function create() {
		cart=model("cart").create(params.cart);
		if(cart.hasErrors()){
			renderView(action="new");
		} else {
			redirectTo(action="index", success="Cart successfully created");
		}
	}

	/**
	* Edit Cart
	**/
	function edit() {
		cart=model("cart").findByKey(params.key);
	}

	/**
	* Update Cart
	**/
	function update() {
		cart=model("cart").findByKey(params.key);
		if(cart.update(params.cart)){
			redirectTo(action="index", success="Cart successfully updated");
		} else {
			renderView(action="edit");
		}
	}

	/**
	* Delete Cart
	**/
	function delete() {
		cart=model("cart").deleteByKey(params.key);
		redirectTo(action="index", success="Cart successfully deleted");
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	function objectNotFound() {
		redirectTo(action="index", error="That Cart wasn't found");
	}

}
