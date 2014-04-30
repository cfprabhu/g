<h1>userGroup_AdminMenus</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('userGroup_AdminMenu.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new userGroup_AdminMenu">

			<span class="glyphicon glyphicon-plus"></span> Add userGroup_AdminMenu
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>x ID</th>
<th>user Group</th>
<th>Admin menu</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#xID#</td>
<td>#userGroup_id#</td>
<td>#AdminMenu_id#</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit userGroup_AdminMenu" href="#buildurl('userGroup_AdminMenu.addEdit')#&xID=#xID#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete userGroup_AdminMenu"  href="javascript:void(0);" onclick="javascript:confirmDelete(#xID#)" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
