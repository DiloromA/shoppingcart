<!--- Product Show --->
<cfparam name="product">
<cfoutput>
<h1>View Product</h1>
<p><strong>Name</strong><br />#encodeForHTML(product.name)#</p>
<p><strong>Quantity</strong><br />#encodeForHTML(product.quantity)#</p>
<p><strong>Price</strong><br />#encodeForHTML(product.price)#</p>
<!--- CLI-Appends-Here --->
</cfoutput>
