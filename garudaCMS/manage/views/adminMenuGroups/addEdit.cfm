<cfoutput>
<form class = "form-horizontal" action = "#buildurl('AdminMenugroups.save')#" method = "post" role = "form">
		<fieldset>
			<cfif val(url.ID)>
				<legend>Edit Admin Menu Group</legend>
			<cfelse>
				<legend>Add Admin Menu Group</legend>
			</cfif>
			<input type = "hidden" ID = "ID" name = "ID"  class = "" value = "#rc.qData.ID#">
			<div class = "form-group">
				<label class = "control-label col-sm-2" for = "title">Title</label>
				<div class = "col-sm-6 controls">
					<input type = "text" ID = "title" name = "title" placeholder = "title" class = "form-control required" value = "#rc.qData.title#" maxlength = "20">
				</div>
			</div>
			<div class = "form-group">
				<label class = "control-label col-sm-2" for = "isSuperAdmin"></label>
				<div class = "col-sm-6 controls">
					<input type = "checkbox" ID = "isSuperAdmin" name = "isSuperAdmin"<cfif #rc.qData.isSuperAdmin# eq 1>checked</cfif> value = "1">&nbsp;isSuperAdmin
				</div>
			</div>
			<div class = "form-group form-actions">
				<div class = "col-sm-offset-2 col-sm-10">
					<input class = "btn btn-primary" type = "submit" name = "AddEdit"value = "Save changes" />
					<input class = "btn btn-default" type = "button" value = "Cancel" />
				</div>
			</div>
	</fieldset>
</form>
</cfoutput>
