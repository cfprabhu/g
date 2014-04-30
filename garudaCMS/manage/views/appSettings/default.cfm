<h1>App Settings</h1><hr>
<cfoutput>
	<div class="row">
		<p class="col-sm-12">
			<a href="#buildurl('appSettings.addEdit')#" class="btn btn-success pull-right"  
				rel="bootTip" title="Add new Tappsetting">
				<span class="glyphicon glyphicon-plus"></span> Add Appsetting
			</a>
		</p>
	</div>
</cfoutput>	
<!--- <cfdump var="#rc.qlist.recordcount#" /> --->
		<table class="table table-striped table-bordered table-condensed tablesorter">
			<thead>
				<tr>
					<th>title</th>
					<th>variable</th>
					<th>value</th>
					<th>is System</th>
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
						<cfif #isSystem# eq 1>	
							<p class="glyphicon glyphicon-ok"></p>	
						<cfelse>
							<p class="glyphicon glyphicon-minus"></p>
						</cfif>
					</td>			
						<td>
							<a class="glyphicon glyphicon-pencil" rel="bootTip" 
							title="Edit appsetting" 
							href="#buildurl('appSettings.addEdit')#&id=#id#"></a> | 
							<a class="glyphicon glyphicon-trash" rel="bootTip" 
							title="Delete appsetting"  href="javascript:void(0);" 
							onclick="javascript:confirmDelete('#id#')" ></a>
						</td>
					</tr>
				</cfoutput>
			</tbody>
		</table>
