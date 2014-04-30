<h1>AdminMenugroups</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('AdminMenugroups.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new AdminMenugroup">

			<span class="glyphicon glyphicon-plus"></span> Add AdminMenugroup
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			
<th>Title</th>

<th>Is Super Admin</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				
<td>#title#</td>

<td>
	<cfif #isSuperAdmin# eq 1>
		<span class="glyphicon glyphicon-ok"></span>
	
	</cfif>
</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit AdminMenugroup" href="#buildurl('AdminMenugroups.addEdit')#&id=#id#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete AdminMenugroup"  href="javascript:void(0);" onclick="javascript:confirmDelete('#id#')" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
