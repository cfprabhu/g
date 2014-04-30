<cfoutput>
<form class="form-horizontal" action="#buildurl('AdminMenugroups.save')#" method="post" role="form">
	<fieldset>
		<cfif val(url.id)>
		<legend>Edit AdminMenugroup</legend>
		<cfelse>
		<legend>Add AdminMenugroup</legend>
		</cfif>
		<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

<div class="form-group">
	<label class="control-label col-sm-2" for="title">Title</label>
	<div class="col-sm-6 controls">
		<input type="text" id="title" name="title" placeholder="title" class="form-control " value="#rc.qData.title#">
	</div>
</div>

<div class="form-group">
	<label class="control-label col-sm-2" for="isSuperAdmin">isSuperAdmin</label>
	<div class="col-sm-6 controls">
		
		<select id="isSuperAdmin" name="isSuperAdmin" class="form-control number" 
		<cfif #rc.qData.isSuperAdmin# eq 1> disabled</cfif>>
			<option <cfif #rc.qData.isSuperAdmin# eq 0>
				selected
			</cfif>value="0">0</option>
			<option <cfif #rc.qData.isSuperAdmin# eq 1>
				selected 				
			</cfif>value="1">1</option>
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
