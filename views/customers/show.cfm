<!--- Customer Show --->
<cfparam name="customer">
<cfoutput>
<h1>View Customer</h1>
<p><strong>Name</strong><br />#encodeForHTML(customer.name)#</p>
<p><strong>Email</strong><br />#encodeForHTML(customer.email)#</p>
<p><strong>Password</strong><br />#encodeForHTML(customer.password)#</p>
<!--- CLI-Appends-Here --->
</cfoutput>
