<cfcomponent output="false" hint="user_userGroup FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.user_userGroupDAO.read();
		}

		function save(rc){
			if ( val(xID) )
				Application.user_userGroupDAO.update(argumentcollection=form);
			else
				Application.user_userGroupDAO.create(argumentcollection=form);
			
			rc.msg = "success:::user_userGroup saved successfully.";
			variables.fw.redirect("user_userGroup", "msg");		
		}
		
		function delete(rc){
			Application.user_userGroupDAO.delete(url.id);
			rc.msg = "danger:::user_userGroup deleted successfully.";
			variables.fw.redirect("user_userGroup", "msg");
		}
		
		function addEdit (rc){
			param name="url.xID" default="";
			rc.qData = Application.user_userGroupDAO.read(xID=xID);
		}
	</cfscript>

</cfcomponent>
