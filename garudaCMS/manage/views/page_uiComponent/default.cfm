<h1>page_uiComponents</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('page_uiComponent.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new page_uiComponent">

			<span class="glyphicon glyphicon-plus"></span> Add page_uiComponent
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>id</th>
<th>page</th>
<th>ui Component</th>
<th>ui Region</th>
<th>order</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#id#</td>
<td>#page_id#</td>
<td>#uiComponent_id#</td>
<td>#uiRegion#</td>
<td>#order#</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit page_uiComponent" href="#buildurl('page_uiComponent.addEdit')#&id=#id#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete page_uiComponent"  href="javascript:void(0);" onclick="javascript:confirmDelete('#id#')" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
