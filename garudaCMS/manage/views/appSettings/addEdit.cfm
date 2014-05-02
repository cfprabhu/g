<cfoutput>
	<form class="form-horizontal" action="#buildurl('appSettings.save')#" method="post" role="form">
		<fieldset>
			<cfif len(rc.ID)> 
				<legend>Edit App Setting</legend>
			<cfelse>
				<legend>Add App Setting</legend>
			</cfif>

			<input type="hidden" ID="ID" name="ID"  class="" value="#rc.qData.ID#">

			<div class="form-group">
				<label class="control-label col-sm-2" for="title">title</label>
					<div class="col-sm-6 controls">
						<input type="text" ID="title" name="title" placeholder="title" class="form-control required" value="#rc.qData.title#" 
					 	<cfif rc.qData.isSystem eq 1>
					 		readonly
					 	</cfif>>
					</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="variable">variable</label>
					<div class="col-sm-6 controls">
						<input type="text" ID="variable" name="variable" placeholder="variable" class="form-control required"  value="#rc.qData.variable#"
					  		<cfif rc.qData.isSystem eq 1>
					  			readonly
					  		</cfif>>
					</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="value">value</label>
					<div class="col-sm-6 controls">
						<input type="text" ID="value" name="value" placeholder="value" class="form-control " value="#rc.qData.value#">
					</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="isSystem">isSystem</label>
					<div class="col-sm-1 controls">
						<input type="checkbox" ID="isSystem" name="isSystem" placeholder="isSystem" class="form-control number" value="1" 
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
