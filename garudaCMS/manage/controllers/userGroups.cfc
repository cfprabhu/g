<cfcomponent output="false" hint="usergroup FW/1 controller." extends="base">
	
	<cfscript>
		
		function default(rc){
			rc.qList= Application.userGroupsDAO.read();
		}

		function save(rc){
			if ( len(rc.id) )
				Application.userGroupsDAO.update(argumentcollection=form);
			else
				Application.userGroupsDAO.create(argumentcollection=form);
			rc.msg = "success:::User Group saved successfully.";
			variables.fw.redirect("userGroups", "msg");		
		}
		
		function delete(rc){
			Application.userGroupsDAO.delete(rc.id);
			rc.msg = "danger:::User Group deleted successfully.";
			variables.fw.redirect("userGroups", "msg");
		}
		
		function addEdit (rc){
			param name="rc.id" default="";
			rc.qData = Application.userGroupsDAO.read(id=rc.id);
		}
	</cfscript>

</cfcomponent>
