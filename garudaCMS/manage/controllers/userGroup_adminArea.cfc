<cfcomponent output="false" hint="usergroup_AdminMenu FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.userGroup_AdminMenuDAO.read();
		}

		function save(rc){
			if ( val(xID) )
				Application.userGroup_AdminMenuDAO.update(argumentcollection=form);
			else
				Application.userGroup_AdminMenuDAO.create(argumentcollection=form);
			
			rc.msg = "success:::userGroup_AdminMenu saved successfully.";
			variables.fw.redirect("userGroup_AdminMenu", "msg");		
		}
		
		function delete(rc){
			Application.userGroup_AdminMenuDAO.delete(url.id);
			rc.msg = "danger:::userGroup_AdminMenu deleted successfully.";
			variables.fw.redirect("userGroup_AdminMenu", "msg");
		}
		
		function addEdit (rc){
			param name="url.xID" default="";
			rc.qData = Application.userGroup_AdminMenuDAO.read(xID=xID);
		}
	</cfscript>

</cfcomponent>
