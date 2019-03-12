<!--- Customer Index --->
<cfparam name="customers">
<cfoutput>
	<h1>Customers index</h1>
	<p>#linkTo(route="newCustomer", text="Create New Customer", class="btn btn-default")#</p>

	<cfif customers.recordcount>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Password</th>
                    <!--- CLI-Appends-thead-Here --->
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="customers">
				<tr>
					<td>
						#id#
					</td>
					<td>
						#name#
					</td>
					<td>
						#email#
					</td>
					<td>
						#password#
					</td>
                    <!--- CLI-Appends-tbody-Here --->
					<td>
						<div class="btn-group">
							#linkTo(route="Customer", key=id, text="View", class="btn btn-xs btn-info", encode=false)#
							#linkTo(route="editCustomer", key=id, text="Edit", class="btn btn-xs btn-primary", encode=false)#
						</div>
						#buttonTo(route="Customer", method="delete", key=id, text="Delete", class="pull-right", inputClass="btn btn-danger btn-xs", encode=false)#
					</td>
				</tr>
				</cfloop>
			</tbody>
		</table>
	<cfelse>
		<p>Sorry, there are no Customers yet</p>
	</cfif>
</cfoutput>
