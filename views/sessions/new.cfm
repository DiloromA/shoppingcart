<!--- Customer Signin Form --->

<cfoutput>
<h1>Signin Customer</h1>
#startFormTag(action="create")#
<label for="email">E-mail Address</label>
#textFieldTag(name="email")#
<label for="password">Password</label>
#passwordFieldTag(name="password")#
#submitTag(value="Login", class="btn primary")#
</cfoutput>
