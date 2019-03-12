<cfscript>
	// --------------------------------------------------
	// New customer session related functions
	/**
	 * @hint Returns the customer currently logged in.
	 */
	 public any function currentCustomer() {
	 	if ( loggedIn() ) {
	 		currentCustomer = model("customer").findByKey(session.currentCustomer.id);
	 		return currentCustomer;
	 	}
	 }
	/**
	 * @hint Is the customer logged in?
	 */
	 public boolean function loggedIn() {
	 	return StructKeyExists(session, "currentCustomer"); 
	 }
	/**
	 * @hint Logs in the customer.
	 */
	 public void function logIn(required customer) {
	 	session.currentCustomer = {
	 		id = arguments.customer.id
	 	};
	 }
	/**
	 * @hint Logs the customer out.
	 */
	 public void function logOut() {
	 	if ( loggedIn() ) {
	 		StructDelete(session, "currentCustomer");
	 	}
	 }
	/**
	 * @hint Redirects to a stored location or default location.
	 */
	 public any function redirectBackOr(string controller="customers", string action="index") {
	 	 if ( StructKeyExists(session, "returnTo") ) {
			var returnTo = Duplicate(session.returnTo);
			StructDelete(session, "returnTo");
	 	 	redirectTo(argumentCollection = returnTo);
	 	 }
	 	 else {
			redirectTo(argumentCollection = arguments);
	 	 }
	 }
	/**
	 * @hint Stores return path to use for friendly redirects.
	 */
	 public void function storeLocation(required struct parameters) {
	 	 session.returnTo = arguments.parameters;
	 }
</cfscript>