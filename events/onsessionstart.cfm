<cfscript>
	// Place code here that should be executed on the "onSessionStart" event.
	this.sessionManagement = true;
	this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
</cfscript>