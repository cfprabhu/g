<h1>UI Component</h1><hr>
<cfoutput>
	<div class="row">
		<p class="col-sm-12">
			<a href="#buildurl('uiComponents.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new Tuicomponent">

				<span class="glyphicon glyphicon-plus"></span> Add UIComponent
			</a>
		</p>
	</div>
</cfoutput>	
	<div class="form-group col-md-offset-1 col-md-9">
		<table class="table table-striped table-bordered table-condensed tablesorter">
			<thead>
				<tr>
					<th>Title</th>
					<th>Template</th>
					<th class="nosort">Actions</th>
				</tr>
			</thead>
			<tbody>
				<cfoutput query="rc.qlist">
				<tr>
					<td>#title#</td>
					<td>#template#</td>	
					<td>
						<a class="glyphicon glyphicon-pencil" rel="bootTip" 
						title="Edit Tuicomponent" 
						href="#buildurl('uiComponents.addEdit')#&id=#id#"></a> | 
						<a class="glyphicon glyphicon-trash" rel="bootTip" 
						title="Delete Tuicomponent"  href="javascript:void(0);" 
						onclick="javascript:confirmDelete('#id#')" ></a>
					</td>
				</tr>
				</cfoutput>
			</tbody>
		</table>
	</div>
