<cfcomponent output="false" hint="page_userGroup FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.page_userGroupDAO.read();
		}

		function save(rc){
			if ( val(xID) )
				Application.page_userGroupDAO.update(argumentcollection=form);
			else
				Application.page_userGroupDAO.create(argumentcollection=form);
			
			rc.msg = "success:::page_userGroup saved successfully.";
			variables.fw.redirect("page_userGroup", "msg");		
		}
		
		function delete(rc){
			Application.page_userGroupDAO.delete(url.id);
			rc.msg = "danger:::page_userGroup deleted successfully.";
			variables.fw.redirect("page_userGroup", "msg");
		}
		
		function addEdit (rc){
			param name="url.xID" default="";
			rc.qData = Application.page_userGroupDAO.read(xID=xID);
		}
	</cfscript>

</cfcomponent>
