<h1>pageContents</h1><hr>
<cfoutput>
<div class="row">
	<p class="col-sm-12">
		<a href="#buildurl('pageContents.addEdit')#" class="btn btn-success pull-right"  rel="bootTip" title="Add new Tpagecontent">

			<span class="glyphicon glyphicon-plus"></span> Add Tpagecontent
		</a>
	</p>
</div>
</cfoutput>	
<table class="table table-striped table-bordered table-condensed tablesorter">
	<thead>
		<tr>
			<th>id</th>
<th>Page</th>
<th>template</th>
<th>title</th>
<th>link Title</th>
<th>target</th>
<th>url Title</th>
<th>link</th>
<th>meta Title</th>
<th>meta Keywords</th>
<th>meta Description</th>
<th>content</th>
<th>is Published</th>
<th>insert Date</th>
<th>insert By</th>

			<th class="nosort">Actions</th>
		</tr>
	</thead>
	<tbody>
		<cfoutput query="rc.qlist">
			<tr>
				<td>#id#</td>
<td>#Page_id#</td>
<td>#template#</td>
<td>#title#</td>
<td>#linkTitle#</td>
<td>#target#</td>
<td>#urlTitle#</td>
<td>#link#</td>
<td>#metaTitle#</td>
<td>#metaKeywords#</td>
<td>#metaDescription#</td>
<td>#content#</td>
<td>#isPublished#</td>
<td>#insertDate#</td>
<td>#insertBy#</td>
	
				<td><a class="glyphicon glyphicon-pencil" rel="bootTip" title="Edit Tpagecontent" href="#buildurl('pageContents.addEdit')#&id=#id#"></a> | 
				<a class="glyphicon glyphicon-trash" rel="bootTip" title="Delete Tpagecontent"  href="javascript:void(0);" onclick="javascript:confirmDelete('#id#')" ></a></td>
			</tr>
		</cfoutput>
	</tbody>
</table>
