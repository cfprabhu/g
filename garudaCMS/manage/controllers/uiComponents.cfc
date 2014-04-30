<cfcomponent output="false" hint="uicomponent FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.uiComponentsDAO.read();				
		}

		function save(rc){
			if ( len(id) )
				Application.uiComponentsDAO.update(argumentcollection=form);
			else
				Application.uiComponentsDAO.create(argumentcollection=form);
			
			rc.msg = "success:::uicomponent saved successfully.";
			variables.fw.redirect("uiComponents", "msg");		
		}
		
		function delete(rc){
			Application.uiComponentsDAO.delete(url.id);
			rc.msg = "danger:::uicomponent deleted successfully.";
			variables.fw.redirect("uiComponents", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.uiComponentsDAO.read(id=id);
			rc.directoryList= Application.uiComponentsDAO.directoryList();	
		}
	</cfscript>

</cfcomponent>
