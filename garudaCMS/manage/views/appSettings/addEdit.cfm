<cfoutput>
	<form class="form-horizontal" action="#buildurl('appSettings.save')#" method="post" role="form">
		<fieldset>
			<cfif len(url.id)> 
				<legend>Edit App Setting</legend>
			<cfelse>
				<legend>Add App Setting</legend>
			</cfif>

			<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

			<div class="form-group">
				<label class="control-label col-sm-2" for="title">title</label>
					<div class="col-sm-6 controls">
						<input type="text" id="title" name="title" placeholder="title" class="form-control" value="#rc.qData.title#" 
					 	<cfif rc.qData.isSystem eq 1>
					 		readonly
					 	</cfif>>
					</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="variable">variable</label>
					<div class="col-sm-6 controls">
						<input type="text" id="variable" name="variable" placeholder="variable" class="form-control"  value="#rc.qData.variable#"
					  		<cfif rc.qData.isSystem eq 1>
					  			readonly
					  		</cfif>>
					</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="value">value</label>
					<div class="col-sm-6 controls">
						<input type="text" id="value" name="value" placeholder="value" class="form-control " value="#rc.qData.value#">
					</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="isSystem">isSystem</label>
					<div class="col-sm-1 controls">
						<input type="checkbox" id="isSystem" name="isSystem" placeholder="isSystem" class="form-control number" value="1" 
						<cfif rc.qData.isSystem eq 1>
							checked readonly
						</cfif>>
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
