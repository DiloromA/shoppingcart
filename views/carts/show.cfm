<!--- Cart Show --->
<cfparam name="cart">
<cfoutput>
<h1>View Cart</h1>
<p><strong>User_id</strong><br />#encodeForHTML(cart.user_id)#</p>
<p><strong>Product_id</strong><br />#encodeForHTML(cart.product_id)#</p>
<!--- CLI-Appends-Here --->
</cfoutput>
