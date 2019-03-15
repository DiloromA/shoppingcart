<!--- Cart Index --->
<cfparam name="carts">
<cfoutput>
	<h1>Carts index</h1>
	<p>#linkTo(route="newCart", text="Create New Cart", class="btn btn-default")#</p>

	<cfif carts.recordcount>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Customer_id</th>
					<th>Product_id</th>
                    <!--- CLI-Appends-thead-Here --->
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="carts">
				<tr>
					<td>
						#id#
					</td>
					<td>
						#customer_id#
					</td>
					<td>
						#product_id#
					</td>
                    <!--- CLI-Appends-tbody-Here --->
					<td>
						<div class="btn-group">
							#linkTo(route="Cart", key=id, text="View", class="btn btn-xs btn-info", encode=false)#
							#linkTo(route="editCart", key=id, text="Edit", class="btn btn-xs btn-primary", encode=false)#
						</div>
						#buttonTo(route="Cart", method="delete", key=id, text="Delete", class="pull-right", inputClass="btn btn-danger btn-xs", encode=false)#
					</td>
				</tr>
				</cfloop>
			</tbody>
		</table>
	<cfelse>
		<p>Sorry, there are no Carts yet</p>
	</cfif>
</cfoutput>
