<h1>Admin Menu</h1><hr>
<cfoutput>	
	<div class="row">
		<p class="col-sm-12">
			<a href="#buildurl('AdminMenu.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new Admin Menu"><span class="glyphicon glyphicon-plus"></span> Add Admin Menu</a>
		</p>
	</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>Admin Menu Group</th>
			<th>Title</th>
			<th class="nosort">Is Hidden</th>
			<th>Link URL</th>
			<th class="nosort">Is Super Admin</th>
			<th class="nosort">Actions</th>
			<th class="nosort">Sort</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#title#</td>
				<td>#AdminName#</td>
				
				<td class="text-center">
					<cfif isHidden EQ 1>
						<span class="glyphicon glyphicon-ok"></span>
					<cfelse>
					    <span class="glyphicon glyphicon-minus"></span>	
					</cfif>
				</td>

				<td>#linkURL#</td>
				
				<td class="text-center">
					<cfif isSuperAdmin EQ 1>
						<span class="glyphicon glyphicon-ok"></span>
					<cfelse>
					    <span class="glyphicon glyphicon-minus"></span>	
					</cfif>
				</td>
				<td>
					<a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit Admin Menu" href="#buildurl('AdminMenu.addEdit')#&id=#AMid#"></a>&nbsp;&nbsp;|&nbsp;&nbsp; 

					<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete Admin Menu"  href="javascript:void(0);" onclick="javascript:confirmDelete('#AMid#')" ></a>
				</td>
				<td>
					<a class="glyphicon glyphicon-move" href="javascript:void(0);" style="cursor:move;"  rel="tooltip" title="Sort Admin menu group"></a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<span class="arrow-up"><a class="glyphicon glyphicon-arrow-up" href="javascript:void(0);" rel="tooltip" title="Move up"></a>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
					<span class="arrow-down"><a class="glyphicon glyphicon-arrow-down" href="javascript:void(0);" rel="tooltip" title="Move down"></a></span>
				</td>	
			</tr>
		</cfoutput>
	</tbody>
</table>
