<cfcomponent output="false" hint="AdminMenu FW/1 controller." extends="base">
	
	<cfscript>
		
		function default(rc){
			rc.qList= Application.AdminMenuDAO.read();
		}

		function save(rc){
			if ( len(rc.ID) )
				Application.AdminMenuDAO.update(argumentcollection=rc);
			else{ 
				
				Application.AdminMenuDAO.create(argumentcollection=rc);
			}
			rc.msg = "success:::Admin Menu saved successfully.";
			variables.fw.redirect("AdminMenu", "msg");		
		}
		
		function delete(rc){
			Application.AdminMenuDAO.delete(rc.ID);
			rc.msg = "danger:::Admin Menu deleted successfully.";
			variables.fw.redirect("AdminMenu", "msg");
		}
		
		function addEdit (rc){
			param name="rc.id" default="";
			rc.qData = Application.AdminMenuDAO.read(ID=rc.ID);
			rc.qAdminMenuGroups =Application.AdminMenuGroupsDAO.read();
		}
	</cfscript>

</cfcomponent>
