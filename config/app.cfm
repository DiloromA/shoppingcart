<!---<cfscript>
	/*
		Place settings that should go in the Application.cfc's "this" scope here.

		Examples:
		this.name = "MyAppName";
		this.sessionTimeout = CreateTimeSpan(0,0,5,0);
	*/
	this.sessionManagement = true;
	this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
	// Added via CFWheels CLI
	this.name = "myapp";
	// CLI-Appends-Here
</cfscript>--->

<cfscript>
    this.name = "myApp"; // name of the application context
    // default locale used for formating dates, numbers ...
//    this.locale = "en_GB";
//    // default timezone used
//    this.timezone = "Europe/London";
// scope handling
    // lifespan of a untouched application scope
    this.applicationTimeout = createTimeSpan( 1, 0, 0, 0 );
    // session handling enabled or not
    this.sessionManagement = true;
    // cfml or jee based sessions
    this.sessionType = "cfml";
    // untouched session lifespan
    this.sessionTimeout = createTimeSpan( 0, 0, 45, 0 );
    this.sessionStorage = "memory";
    // client scope enabled or not
    this.clientManagement = false;
    this.clientTimeout = createTimeSpan( 90, 0, 0, 0 );
    this.clientStorage = "cookie";
    // using domain cookies or not
    this.setDomainCookies = false;
    this.setClientCookies = true;
    // prefer the local scope at unscoped write
    this.localMode = "classic";
    // buffer the output of a tag/function body to output in case of a exception
    this.bufferOutput = true;
    this.compression = false;
    this.suppressRemoteComponentContent = false;
// request
    // max lifespan of a running request
    this.requestTimeout=createTimeSpan(0,0,0,50);
// charset
    this.charset.web="UTF-8";
    this.charset.resource="UTF-8";
    this.scopeCascading = "standard";
// Railo Tag Defaults
    this.tag.location.addtoken = "no";
 </cfscript>

