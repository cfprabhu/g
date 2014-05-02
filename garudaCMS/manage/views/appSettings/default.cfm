<h1>App Settings</h1><hr>

	<cfoutput>
		<div class="row">
			<p class="col-sm-12">
				<a href="#buildurl('appSettings.addEdit')#" class="btn btn-success pull-right" rel="bootTip" title="Add new App Setting"><span class="glyphicon glyphicon-plus"></span> Add App Setting</a>
			</p>
		</div>
	</cfoutput>	

	<table class="table table-striped table-bordered table-condensed tablesorter">
		<thead>
			<tr>
				<th>Title</th>
				<th>Variable</th>
				<th>Value</th>
				<th>isSystem</th>
				<th class="nosort">Actions</th>
			</tr>
		</thead>
		<tbody>
			<cfoutput query="rc.qlist">
				<tr>
					<td>#title#</td>
					<td>#variable#</td>
					<td>#value#</td>
					<td class="text-center">
						<cfif isSystem eq 1>	
							<p class="glyphicon glyphicon-ok"></p>	
						<cfelse>
							<p class="glyphicon glyphicon-minus"></p>
						</cfif>
					</td>			
					<td class="text-center">
						<a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit App Setting" href="#buildurl('appSettings.addEdit')#&ID=#ID#"></a> | 
						<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete App Setting"  href="javascript:void(0);" onclick="javascript:confirmDelete('#ID#')"></a>
					</td>
				</tr>
			</cfoutput>
		</tbody>
	</table>
