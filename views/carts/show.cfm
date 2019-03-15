<!--- Cart Show --->
<cfparam name="cart">
<cfoutput>
<h1>View Cart</h1>
<p><strong>Customer_id</strong><br />#encodeForHTML(cart.customer_id)#</p>
<!---<cfset product = #cart.products.find(p => p.id == cart.product_id)#>--->
<p><strong>Product_id</strong><br />
#encodeForHTML(cart.product_id)#</p>
<!--- CLI-Appends-Here --->
</cfoutput>
