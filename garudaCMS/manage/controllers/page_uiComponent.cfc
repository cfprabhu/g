<cfcomponent output="false" hint="page_uicomponent FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.page_uiComponentDAO.read();
		}

		function save(rc){
			if ( len(id) )
				Application.page_uiComponentDAO.update(argumentcollection=form);
			else
				Application.page_uiComponentDAO.create(argumentcollection=form);
			
			rc.msg = "success:::page_uiComponent saved successfully.";
			variables.fw.redirect("page_uiComponent", "msg");		
		}
		
		function delete(rc){
			Application.page_uiComponentDAO.delete(url.id);
			rc.msg = "danger:::page_uiComponent deleted successfully.";
			variables.fw.redirect("page_uiComponent", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.page_uiComponentDAO.read(id=id);
		}
	</cfscript>

</cfcomponent>
