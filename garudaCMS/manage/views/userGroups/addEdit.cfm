<cfoutput>
	<form class="form-horizontal" action="#buildurl('userGroups.save')#" method="post" role="form">
		<fieldset>
			<cfif len(rc.id)>
			   <legend>Edit User Group</legend>
			 <cfelse>
			   <legend>Add User Group</legend>
			</cfif>
			<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

			<div class="form-group">
				<label class="control-label col-sm-2" for="title">Title</label>
				<div class="col-sm-6 controls">
					<input type="text" id="title" name="title" maxlength="20" placeholder="Title" class="form-control required" value="#rc.qData.title#">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10 col-sm-offset-2">
				   <div class="checkbox">
						<label for="isAdmin">
						 	<input type="checkbox" id="isAdmin" name="isAdmin" value="1" <cfif rc.qData.isAdmin EQ 1>checked</cfif>>Is Admin
						</label>
				    </div>
				</div>  
			</div>
			<div class="form-group">
				<div class="col-sm-10 col-sm-offset-2">
				   <div class="checkbox">
						<label for="isSuperAdmin">
						 	<input type="checkbox" id="isSuperAdmin" name="isSuperAdmin" value="1" <cfif rc.qData.isSuperAdmin EQ 1>checked</cfif>>Is Super Admin
						</label>
				    </div>
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
