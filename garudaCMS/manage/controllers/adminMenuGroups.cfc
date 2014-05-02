<cfcomponent output = "false" hint = "AdminMenugroup FW/1 controller." extends = "base">
	
	<cfscript>
		function addEdit (rc){
			param name = "rc.ID" default = "";
			if(isDefined("rc.ID"))
				rc.qData = Application.AdminMenuGroupsDAO.read(ID = rc.ID);
		}
		
		function default(rc){
			rc.qList = Application.AdminMenuGroupsDAO.read();
		}

		function save(rc){
			if (len(rc.ID))
				Application.AdminMenuGroupsDAO.update(argumentcollection = rc);
			else
				Application.AdminMenuGroupsDAO.create(argumentcollection = rc);
			rc.msg = "success:::Admin Menu Group saved successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");		
		}
		
		function delete(rc){
			Application.AdminMenuGroupsDAO.delete(rc.ID);
			rc.msg = "danger:::Admin Menu Group deleted successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");
		}
	</cfscript>

</cfcomponent>
