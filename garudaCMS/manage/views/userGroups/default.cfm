<h1>User Groups</h1><hr>
<cfoutput>
	<div class="row">
		<p class="col-sm-12">
			<a href="#buildurl('userGroups.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add New User Group"><span class="glyphicon glyphicon-plus"></span> Add User Group</a>
		</p>
	</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th> Title</th>
			<th class="nosort">Is Admin</th>
			<th class="nosort">Is Super Admin</th>
            <th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr class="text-center">
				<td class="text-left">#title#</td>
				<td>
					<cfif isAdmin EQ 1>
						<span class="glyphicon glyphicon-ok"></span>
					<cfelse>
						<span class="glyphicon glyphicon-minus"></span>
					</cfif>
				</td>
				<td>
					<cfif isSuperAdmin EQ 1>
					  <span class="glyphicon glyphicon-ok"></span>
					<cfelse>
					  <span class="glyphicon glyphicon-minus"></span>   
					</cfif>
				</td>
	            <td>
	            	<a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit User Group" href="#buildurl('userGroups.addEdit')#&id=#id#"></a> | 
				    <a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete User Group"  href="javascript:void(0);" onclick="javascript:confirmDelete('#id#')" ></a>
			   </td>
			</tr>
		</cfoutput>
	</tbody>
</table>
