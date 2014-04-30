<cfoutput>
	<style type="text/css">
		.align{
			float: left;
		}
	</style>
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
			<input type="text" id="firstName" name="firstName" placeholder="FirstName" class="form-control required" value="#rc.qData.firstName#" maxlength="20">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="lastName">LastName</label>
		<div class="col-sm-6 controls">
			<input type="text" id="lastName" name="lastName" placeholder="LastName" class="form-control required" value="#rc.qData.lastName#" maxlength="20">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="username">Username</label>
		<div class="col-sm-6 controls">
			<input type="text" id="username" name="username" placeholder="Username" class="form-control required" value="#rc.qData.username#" maxlength="20">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="password">Password</label>
		<div class="col-sm-6 controls">
			<input type="password" id="password" name="password" placeholder="Password" class="form-control required" value="#rc.qData.password#" maxlength="20">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="email">Email</label>
		<div class="col-sm-6 controls">
			<input type="email" id="email" name="email" placeholder="Email" class="form-control required" value="#rc.qData.email#" maxlength="30">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="photo">Photo</label>
		<div class="col-sm-6 controls" >
			<div class="col-sm-7">
				<span class="input-group-btn">
		        	<input type="file" id="photo" name="photo" class="btn btn-default"> 
		        </span>
	        </div>
	   		<div class="col-sm-3">
	   			<cfif #rc.qData.photo# eq "">
					<img src="../assets/thumbnail/user.png">
				<cfelse>
					<img src="../assets/thumbnail/#rc.qData.photo#">
				</cfif>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="summary">Summary</label>
		<div class="col-sm-6 controls">
		<textarea id="summary" name="summary" class="form-control required" value="#rc.qData.summary#" maxlength="200">#rc.qData.summary#</textarea>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="detailedBio">DetailedBio</label>
		<div class="col-sm-6 controls">
		<textarea id="detailedBio" name="detailedBio"  class="form-control required" value="#rc.qData.detailedBio#" maxlength="200">#rc.qData.detailedBio#</textarea>
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
