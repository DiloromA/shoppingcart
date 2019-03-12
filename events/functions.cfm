<cfscript>
	// --------------------------------------------------
	// New customer session related functions
	/**
	 * @hint Returns the customer currently logged in.
	 */
	 public any function currentCustomer() {
	 	if ( signedIn() ) {
	 		currentCustomer = model("customer").findByKey(session.currentCustomer.id);
	 		return currentCustomer;
	 	}
	 }
	/**
	 * @hint Is the customer signed in?
	 */
	 public boolean function signedIn() {
	 	return StructKeyExists(session, "currentCustomer"); 
	 }
	/**
	 * @hint Signs in the customer.
	 */
	 public void function signIn(required customer) {
	 	session.currentCustomer = {
	 		id = arguments.customer.id
	 	};
	 }
	/**
	 * @hint Signs the customer out.
	 */
	 public void function signOut() {
	 	if ( signedIn() ) {
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