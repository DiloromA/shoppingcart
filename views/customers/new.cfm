<!--- Customer Creation Form --->
<cfparam name="customer">
<cfoutput>
<h1>Create New Customer</h1>
#errorMessagesFor("customer")#
#startFormTag(id="customerNewForm", action="create")#
	#includePartial("form")#
	#submitTag(value="Create Customer")#
#endFormTag()#
</cfoutput>
