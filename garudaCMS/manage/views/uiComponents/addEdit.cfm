<cfoutput>
	<form class="form-horizontal" action="#buildurl('uiComponents.save')#" 
		method="post" role="form">
		<fieldset>
			<cfif val(url.id)>
				<legend>Edit UI Component</legend>
					<cfelse>
				<legend>Add UI Component</legend>
			</cfif>
			<input type="hidden" id="id" name="id"  class="" value="#rc.qData.id#">

		<div class="form-group">
			<label class="control-label col-sm-2" for="title">Title</label>
			<div class="col-sm-6 controls">
				<input type="text" id="title" name="title" placeholder="title" class="form-control " value="#rc.qData.title#">
			</div>
		</div>
	
		<div class="form-group">
			<label class="control-label col-sm-2" for="content">Content</label>  
			<div class="col-sm-6 controls">
				<textarea id="content" name="content" placeholder="content" 
					class="form-control richtextbox" rows=3 >#rc.qData.content#</textarea>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2" for="template">Template</label>
			<div class="col-sm-6 controls">	
				<select class="form-control" name="template" id="template">
					<option value="">Select Template</option>				
					<cfloop query="rc.directoryList">
			  			<option 
			  			<cfif #rc.directoryList.name# eq #rc.qData.template#>selected</cfif>   
			  			 	value="#rc.directoryList.name#">#rc.directoryList.name#
			  			</option>	  					
			  		</cfloop>
				</select>
			</div>
		</div>
			
		<div class="form-group form-actions">
			<div class="col-sm-offset-2 col-sm-10">
				<input class="btn btn-primary" type="submit" name="AddEdit" 
					value="Save changes" />
				<input class="btn btn-default" type="button" value="Cancel" />
			</div>
		</div>
			
		</fieldset>
	</form>
</cfoutput>
