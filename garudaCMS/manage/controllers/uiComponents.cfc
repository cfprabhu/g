<cfcomponent output="false" hint="uicomponent FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList = Application.uiComponentsDAO.read();				
		}

		function save(rc){
			if ( len(ID) )
				Application.uiComponentsDAO.update(argumentcollection = rc);
			else
				Application.uiComponentsDAO.create(argumentcollection = rc);
			
			rc.msg = "success:::UI Component saved successfully.";
			variables.fw.redirect("uiComponents", "msg");		
		}
		
		function delete(rc){			
			Application.uiComponentsDAO.delete(rc.ID);
			rc.msg = "danger:::UI Component deleted successfully.";
			variables.fw.redirect("uiComponents", "msg");
		}
		
		function addEdit (rc){			
			param name = "rc.ID" default = "";
			rc.qData = Application.uiComponentsDAO.read(ID = rc.ID);
			rc.directoryList = Application.uiComponentsDAO.directoryList();	
		}
	</cfscript>

</cfcomponent>
