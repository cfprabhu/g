<cfcomponent output="false" hint="AdminMenu FW/1 controller." extends="base">
	
	<cfscript>
		
		function default(rc){
			rc.qList= Application.AdminMenuDAO.read();
		}

		function save(rc){
			if ( len(rc.id) )
				Application.AdminMenuDAO.update(argumentcollection=rc);
			else{ 
				sort=Application.AdminMenuDAO.getSortMax(AdminMenuGroup_id=rc.AdminMenuGroup_id);
                rc.sortOrder=sort.sortOrder;
				Application.AdminMenuDAO.create(argumentcollection=rc);
			}
			rc.msg = "success:::AdminMenu saved successfully.";
			variables.fw.redirect("AdminMenu", "msg");		
		}
		
		function delete(rc){
			Application.AdminMenuDAO.delete(rc.id);
			rc.msg = "danger:::AdminMenu deleted successfully.";
			variables.fw.redirect("AdminMenu", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.AdminMenuDAO.read(id=id);
			rc.qAdminMenuGroups =Application.AdminMenuGroupsDAO.read();
		}
	</cfscript>

</cfcomponent>