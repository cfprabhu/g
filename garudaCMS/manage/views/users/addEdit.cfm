<cfoutput>
<form class="form-horizontal" action="#buildurl('users.save')#" method="post" role="form" enctype="multipart/form-data">
	<fieldset>
		<cfif len(url.id) lte 0>
		<legend>Add User</legend>
		<cfelse>
		<legend>Edit User</legend>
		</cfif>
		<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">
<div class="form-group">
	<label class="control-label col-sm-2" for="firstName">FirstName</label>
	<div class="col-sm-6 controls">
		<input type="text" id="firstName" name="firstName" placeholder="FirstName" class="form-control " value="#rc.qData.firstName#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="lastName">LastName</label>
	<div class="col-sm-6 controls">
		<input type="text" id="lastName" name="lastName" placeholder="LastName" class="form-control " value="#rc.qData.lastName#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="username">Username</label>
	<div class="col-sm-6 controls">
		<input type="text" id="username" name="username" placeholder="Username" class="form-control " value="#rc.qData.username#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="password">Password</label>
	<div class="col-sm-6 controls">
		<input type="password" id="password" name="password" placeholder="Password" class="form-control " value="#rc.qData.password#">
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="email">Email</label>
	<div class="col-sm-6 controls">
		<input type="email" id="email" name="email" placeholder="Email" class="form-control " value="#rc.qData.email#">
	</div>
</div>
<cfif len(url.id) lte 0>
	<div class="form-group">
		<label class="control-label col-sm-2" for="photo">Photo</label>
		<div class="col-sm-6 controls">
			<span class="input-group-btn">
	        	<input type="file" id="photo" name="photo" class="btn btn-info" value="#rc.qData.photo#"> 
	        </span>
		</div>
	</div>
</cfif>
<div class="form-group">
	<label class="control-label col-sm-2" for="summary">Summary</label>
	<div class="col-sm-6 controls">
	<textarea id="summary" name="summary" class="form-control" value="#rc.qData.summary#">#rc.qData.summary#</textarea>
	</div>
</div>
<div class="form-group">
	<label class="control-label col-sm-2" for="detailedBio">DetailedBio</label>
	<div class="col-sm-6 controls">
	<textarea id="detailedBio" name="detailedBio"  class="form-control" value="#rc.qData.detailedBio#">#rc.qData.detailedBio#</textarea>
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
