<cfoutput>
<form class="form-horizontal" action="#buildurl('pages.save')#" method="post" role="form">
	<fieldset>
		<cfif val(url.id)>
		<legend>Edit Tpage</legend>
		<cfelse>
		<legend>Add Tpage</legend>
		</cfif>
		<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

<div class="form-group">
	<label class="control-label col-sm-2" for="parent_id">parent_id</label>
	<div class="col-sm-6 controls">
		<select id="parent_id" name="parent_id"  class="form-control " >
			<option  value="">-- Select parent_id--</option>
			
		</select>
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="startDate">startDate</label>
	<div class="col-sm-6 controls">
		<input type="text" id="startDate" name="startDate" placeholder="startDate" class="form-control " value="#rc.qData.startDate#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="endDate">endDate</label>
	<div class="col-sm-6 controls">
		<input type="text" id="endDate" name="endDate" placeholder="endDate" class="form-control " value="#rc.qData.endDate#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="isHidden">isHidden</label>
	<div class="col-sm-6 controls">
		<input type="text" id="isHidden" name="isHidden" placeholder="isHidden" class="form-control " value="#rc.qData.isHidden#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="insertDate">insertDate</label>
	<div class="col-sm-6 controls">
		<input type="text" id="insertDate" name="insertDate" placeholder="insertDate" class="form-control " value="#rc.qData.insertDate#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="modifiedDate">modifiedDate</label>
	<div class="col-sm-6 controls">
		<input type="text" id="modifiedDate" name="modifiedDate" placeholder="modifiedDate" class="form-control " value="#rc.qData.modifiedDate#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="sortOrder">sortOrder</label>
	<div class="col-sm-6 controls">
		<input type="text" id="sortOrder" name="sortOrder" placeholder="sortOrder" class="form-control number" value="#rc.qData.sortOrder#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="isSecure">isSecure</label>
	<div class="col-sm-6 controls">
		<input type="text" id="isSecure" name="isSecure" placeholder="isSecure" class="form-control number" value="#rc.qData.isSecure#">
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
