<h1>pages</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('pages.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new Tpage">

			<span class="glyphicon glyphicon-plus"></span> Add Tpage
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>id</th>
<th>parent</th>
<th>start Date</th>
<th>end Date</th>
<th>is Hidden</th>
<th>insert Date</th>
<th>modified Date</th>
<th>sort Order</th>
<th>is Secure</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#id#</td>
<td>#parent_id#</td>
<td>#startDate#</td>
<td>#endDate#</td>
<td>#isHidden#</td>
<td>#insertDate#</td>
<td>#modifiedDate#</td>
<td>#sortOrder#</td>
<td>#isSecure#</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit Tpage" href="#buildurl('pages.addEdit')#&id=#id#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete Tpage"  href="javascript:void(0);" onclick="javascript:confirmDelete('#id#')" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
