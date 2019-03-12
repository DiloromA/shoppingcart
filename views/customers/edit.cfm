<!--- Customer Edit Form --->
<cfparam name="customer">
<cfoutput>
<h1>Edit Customer</h1>
#errorMessagesFor("customer")#
#startFormTag(id="customerEditForm", route="Customer", method="patch", key=params.key)#
	#includePartial("form")#
	#submitTag(value="Update Customer")#
#endFormTag()#
</cfoutput>
