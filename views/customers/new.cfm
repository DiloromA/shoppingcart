<!--- Customer Signup Form --->
<cfparam name="customer">
<cfoutput>
<h1>Signup Customer</h1>
#errorMessagesFor("customer")#
#startFormTag(id="customerNewForm", action="create")#
	#includePartial("form")#
	#submitTag(value="Signup Customer")#
#endFormTag()#
</cfoutput>
