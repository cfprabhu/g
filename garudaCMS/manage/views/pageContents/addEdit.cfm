<cfoutput>
<form class="form-horizontal" action="#buildurl('pageContents.save')#" method="post" role="form">
	<fieldset>
		<cfif val(url.id)>
		<legend>Edit Tpagecontent</legend>
		<cfelse>
		<legend>Add Tpagecontent</legend>
		</cfif>
		<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

<div class="form-group">
	<label class="control-label col-sm-2" for="Page_id">Page_id</label>
	<div class="col-sm-6 controls">
		<select id="Page_id" name="Page_id"  class="form-control " >
			<option  value="">-- Select Page_id--</option>
			
		</select>
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="template">template</label>
	<div class="col-sm-6 controls">
		<input type="text" id="template" name="template" placeholder="template" class="form-control " value="#rc.qData.template#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="title">title</label>
	<div class="col-sm-6 controls">
		<input type="text" id="title" name="title" placeholder="title" class="form-control " value="#rc.qData.title#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="linkTitle">linkTitle</label>
	<div class="col-sm-6 controls">
		<input type="text" id="linkTitle" name="linkTitle" placeholder="linkTitle" class="form-control " value="#rc.qData.linkTitle#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="target">target</label>
	<div class="col-sm-6 controls">
		<input type="text" id="target" name="target" placeholder="target" class="form-control " value="#rc.qData.target#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="urlTitle">urlTitle</label>
	<div class="col-sm-6 controls">
		<input type="text" id="urlTitle" name="urlTitle" placeholder="urlTitle" class="form-control " value="#rc.qData.urlTitle#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="link">link</label>
	<div class="col-sm-6 controls">
		<input type="text" id="link" name="link" placeholder="link" class="form-control " value="#rc.qData.link#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="metaTitle">metaTitle</label>
	<div class="col-sm-6 controls">
		<input type="text" id="metaTitle" name="metaTitle" placeholder="metaTitle" class="form-control " value="#rc.qData.metaTitle#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="metaKeywords">metaKeywords</label>
	<div class="col-sm-6 controls">
		<input type="text" id="metaKeywords" name="metaKeywords" placeholder="metaKeywords" class="form-control " value="#rc.qData.metaKeywords#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="metaDescription">metaDescription</label>
	<div class="col-sm-6 controls">
		<input type="text" id="metaDescription" name="metaDescription" placeholder="metaDescription" class="form-control " value="#rc.qData.metaDescription#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="content">content</label>
	<div class="col-sm-6 controls">
		<input type="text" id="content" name="content" placeholder="content" class="form-control " value="#rc.qData.content#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="isPublished">isPublished</label>
	<div class="col-sm-6 controls">
		<input type="text" id="isPublished" name="isPublished" placeholder="isPublished" class="form-control " value="#rc.qData.isPublished#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="insertDate">insertDate</label>
	<div class="col-sm-6 controls">
		<input type="text" id="insertDate" name="insertDate" placeholder="insertDate" class="form-control " value="#rc.qData.insertDate#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="insertBy">insertBy</label>
	<div class="col-sm-6 controls">
		<select id="insertBy" name="insertBy"  class="form-control " >
			<option  value="">-- Select insertBy--</option>
			
		</select>
	</div>
</div>
		
		<div class="form-group form-actions">
			<div class="col-sm-offset-2 col-sm-10">
				<input class="btn btn-primary" type="submit" name="AddEdit" value="Save changes" />
				<input class="btn btn-default" type="button" value="Cancel" />
			</div>
		</div>
		
	</fieldset>
</form>
</cfoutput>
