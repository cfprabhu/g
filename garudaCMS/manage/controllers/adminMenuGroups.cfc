<cfcomponent output = "false" hint = "AdminMenugroup FW/1 controller." extends = "base">
	
	<cfscript>
		function addEdit (rc){
			param name = "url.ID" default = "";
			if(isDefined("url.ID"))
				rc.qData = Application.AdminMenuGroupsDAO.read(ID = ID);
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
			Application.AdminMenuGroupsDAO.delete(url.ID);
			rc.msg = "danger:::Admin Menu Group deleted successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");
		}
		
		
	</cfscript>

</cfcomponent>
