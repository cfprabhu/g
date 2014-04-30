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
			if (len(rc.id))
				Application.AdminMenuGroupsDAO.update(argumentcollection=rc);
			else{
				sort=Application.AdminMenuGroupsDAO.getMaxSort();
				rc.sortOrder = sort.sortOrder;
				Application.AdminMenuGroupsDAO.create(argumentcollection=rc);
			}
			rc.msg = "success:::Admin Menu Group saved successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");		
		}
		
		function delete(rc){
			Application.AdminMenuGroupsDAO.delete(url.id);
			rc.msg = "danger:::Admin Menu Group deleted successfully.";
			variables.fw.redirect("AdminMenugroups", "msg");
		}
		
		
	</cfscript>

</cfcomponent>
