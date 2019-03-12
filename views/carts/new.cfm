<!--- Cart Creation Form --->
<cfparam name="cart">
<cfoutput>
<h1>Create New Cart</h1>
#errorMessagesFor("cart")#
#startFormTag(id="cartNewForm", action="create")#
	#includePartial("form")#
	#submitTag(value="Create Cart")#
#endFormTag()#
</cfoutput>
