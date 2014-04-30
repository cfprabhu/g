<cfcomponent output="false" hint="AdminMenugroup FW/1 controller." extends="base">
	
	<cfscript>
		function addEdit (rc){
			param name="url.id" default="";
			if(isDefined("url.id"))
				rc.qData = Application.AdminMenuGroupsDAO.read(id=id);
		}
		function default(rc){
			rc.qList= Application.AdminMenuGroupsDAO.read();
		}

		function save(rc){
			if (len(form.id))
				Application.AdminMenuGroupsDAO.update(argumentcollection=form);
			else{
				sOrder = Application.AdminMenuGroupsDAO.maxSort(o_title=title);
				Application.AdminMenuGroupsDAO.create(argumentcollection=form,sortOrder=sOrder.sort);
			}
			rc.msg = "success:::AdminMenugroup saved successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");		
		}
		
		function delete(rc){
			Application.AdminMenuGroupsDAO.delete(url.id);
			rc.msg = "danger:::AdminMenugroup deleted successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");
		}
		
		
	</cfscript>

</cfcomponent>
