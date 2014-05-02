<h1>Admin Menu Groups</h1><hr>
<cfoutput>
	<div class="row">
		<p class="col-sm-12">
			<a href="#buildurl('AdminMenugroups.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new Admin Menu Group">
				<span class="glyphicon glyphicon-plus"></span> Add Admin Menu Group
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
					<cfif isSuperAdmin eq 1>
						<div class="text-center">
							<span class="glyphicon glyphicon-ok"></span>
						</div>
					</cfif>
				</td>
				<td>
					<div class="text-center">
						<a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit Admin Menu group" href="#buildurl('AdminMenugroups.addEdit')#&ID=#ID#"></a>&nbsp;&nbsp; | &nbsp;
						<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete Admin Menu group"  href="javascript:voID(0);" onclick="javascript:confirmDelete('#ID#')" ></a>
					</div>
				</td>
			</tr>
		</cfoutput>
	</tbody>
</table>
