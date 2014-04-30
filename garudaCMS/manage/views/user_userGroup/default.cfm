<h1>user_userGroups</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('user_userGroup.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new user_userGroup">

			<span class="glyphicon glyphicon-plus"></span> Add user_userGroup
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>x ID</th>
<th>user</th>
<th>user Group</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#xID#</td>
<td>#user_id#</td>
<td>#userGroup_id#</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit user_userGroup" href="#buildurl('user_userGroup.addEdit')#&xID=#xID#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete user_userGroup"  href="javascript:void(0);" onclick="javascript:confirmDelete(#xID#)" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
