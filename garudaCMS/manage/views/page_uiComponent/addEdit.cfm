<cfoutput>
<form class="form-horizontal" action="#buildurl('page_uiComponent.save')#" method="post" role="form">
	<fieldset>
		<cfif val(url.id)>
		<legend>Edit page_uiComponent</legend>
		<cfelse>
		<legend>Add page_uiComponent</legend>
		</cfif>
		<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

<div class="form-group">
	<label class="control-label col-sm-2" for="page_id">page_id</label>
	<div class="col-sm-6 controls">
		<select id="page_id" name="page_id"  class="form-control " >
			<option  value="">-- Select page_id--</option>
			
		</select>
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="uiComponent_id">uiComponent_id</label>
	<div class="col-sm-6 controls">
		<select id="uiComponent_id" name="uiComponent_id"  class="form-control " >
			<option  value="">-- Select uiComponent_id--</option>
			
		</select>
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="uiRegion">uiRegion</label>
	<div class="col-sm-6 controls">
		<input type="text" id="uiRegion" name="uiRegion" placeholder="uiRegion" class="form-control number" value="#rc.qData.uiRegion#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="order">order</label>
	<div class="col-sm-6 controls">
		<input type="text" id="order" name="order" placeholder="order" class="form-control number" value="#rc.qData.order#">
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
