<cfcomponent output="false" hint="appsetting FW/1 controller." extends="base">
	
	<cfscript>
		
		function default(rc){
			rc.qList= Application.appSettingsDAO.read();
		}

		function save(rc){
			if ( len(id) )
				Application.appSettingsDAO.update(argumentcollection=form);
			else
				Application.appSettingsDAO.create(argumentcollection=form);
			
			rc.msg = "success:::appsetting saved successfully.";
			variables.fw.redirect("appSettings", "msg");		
		}
		
		function delete(rc){
			Application.appSettingsDAO.delete(url.id);
			rc.msg = "danger:::appsetting deleted successfully.";
			variables.fw.redirect("appSettings", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.appSettingsDAO.read(id=id);
		}
	</cfscript>

</cfcomponent>
