<cfscript>
	/*
		If you leave these settings commented out, CFWheels will set the data source name to the same name as the folder the application resides in.
	*/

	// set(dataSourceName="");
	// set(dataSourceUserName="");
	// set(dataSourcePassword="");

	/*
		If you leave this setting commented out, CFWheels will try to determine the URL rewrite capabilities automatically.
		The "URLRewriting" setting can bet set to "on", "partial" or "off".
		To run with "partial" rewriting, the "cgi.path_info" variable needs to be supported by the web server.
		To run with rewriting set to "on", you need to apply the necessary rewrite rules on the web server first.
	*/

	// Added via CFWheels CLI
	set(dataSourceName="myapp");
	set(URLRewriting="On");
	// Reload your application with ?reload=true&password=password
	set(reloadPassword="password");
	// Bootstrap 3 form settings
set(functionName="submitTag", class="btn btn-primary", value="Save Changes");
set(functionName="checkBox,checkBoxTag", labelPlacement="aroundRight", prependToLabel="<div class=""checkbox"">", appendToLabel="</div>", uncheckedValue="0");
set(functionName="radioButton,radioButtonTag", labelPlacement="aroundRight", prependToLabel="<div class=""radio"">", appendToLabel="</div>");
set(functionName="textField,textFieldTag,select,selectTag,passwordField,passwordFieldTag,textArea,textAreaTag,fileFieldTag,fileField",
	class="form-control",
	labelClass="control-label",
	labelPlacement="before",
	prependToLabel="<div class=""form-group"">",
	prepend="<div class="""">",
	append="</div></div>",
	encode="attributes"  );

set(functionName="dateTimeSelect,dateSelect", prepend="<div class=""form-group"">", append="</div>", timeSeparator="", minuteStep="5", secondStep="10", dateOrder="day,month,year", dateSeparator="", separator="");

set(functionName="errorMessagesFor", class="alert alert-dismissable alert-danger"" style=""margin-left:0;padding-left:26px;");
set(functionName="errorMessageOn", wrapperElement="div", class="alert alert-danger");
set(functionName="paginationLinks", prepend="<ul class=""pagination"">", append="</ul>", prependToPage="<li>", appendToPage="</li>", linkToCurrentPage=true, classForCurrent="active", anchorDivider="<li class=""disabled""><a href=""##"">...</a></li>");

// CLI-Appends-Here
</cfscript>
