component
	extends="Controller"
	hint="Handles customer authentication."
{
	/**
	 * @hint Constructor.
	 */
	public void function init() {
		filters(through="redirectIfLoggedIn", except="delete"); 
	}

	// --------------------------------------------------
	// RESTful style actions

	/*
	 * @hint Renders the login page.
	 */
	public void function new() {
	}

	/*
	 * @hint Logs in the customer.
	 */
	public void function create() {
			
		var customer = model("customer").findOneByEmail(params.email);

		if ( ! IsObject(customer) || customer.password != params.password){
			flashInsert(message="We could not log you in. Please try that again.", messageType="error");
			//renderPage(action="new");
			redirectTo(route="home");
		}
		else {
			logIn(customer);
			redirectBackOr(controller="customers", action="index");
		}
	}

	/*
	 * @hint Logs out the customer.
	 */
	public void function delete() {
		logOut();
		redirectTo(route="home");
	}
}