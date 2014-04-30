<h1>page_userGroups</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('page_userGroup.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new page_userGroup">

			<span class="glyphicon glyphicon-plus"></span> Add page_userGroup
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>x ID</th>
<th>page</th>
<th>user Group</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#xID#</td>
<td>#page_id#</td>
<td>#userGroup_id#</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit page_userGroup" href="#buildurl('page_userGroup.addEdit')#&xID=#xID#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete page_userGroup"  href="javascript:void(0);" onclick="javascript:confirmDelete(#xID#)" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
