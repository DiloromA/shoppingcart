/**
 * This is the parent controller file that all your controllers should extend.
 * You can add functions to this file to make them available in all your controllers.
 * Do not delete this file.
 *
 * NOTE: When extending this controller and implementing `config()` in the child controller, don't forget to call this
 * base controller's `config()` via `super.config()`, or else the call to `protectsFromForgery` below will be skipped.
 *
 * Example controller extending this one:
 *
 * component extends="Controller" {
 *   function config() {
 *     // Call parent config method
 *     super.config();
 *
 *     // Your own config code here.
 *     // ...
 *   }
 * }
 */
component extends="wheels.Controller" {
	function config() {
		protectsFromForgery();


		/**
	 * @hint Constructor
	 */
	public void function init() {
		filters(through="getCurrentCustomer");
	}

	// --------------------------------------------------
	// Filters

	/**
	 * @hint Loads the current customer in session.
	 */
	private void function getCurrentCustomer() {
		if ( loggedIn() ) {
			currentCustomer = currentCurrent();
		}
	}

	/*
	 * @hint Ensures customer is authenticated.
	 */
	private void function isAuthenticated() {
		if ( ! loggedIn() ) {
			storeLocation(params);
			redirectTo(route="login");	
		}
	}

	/*
	 * @hint Ensures it's the correct customer.
	 */
	private void function isAuthorized() {
		customer = model("customer").findByKey(params.key);
		if ( ! IsObject(customer) || ! customer.id == currentCustomer.id ) {
			redirectTo(route="home");
		}
	}

	/**
	 * @hint Redirects the customer away if its logged in.
	 */
	private void function redirectIfLoggedIn() {
		if ( loggedIn() ) redirectTo(controller="customers", action="index");

	}
}
}
