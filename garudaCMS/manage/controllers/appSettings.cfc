<cfcomponent output="false" hint="appsetting FW/1 controller." extends="base">
	
	<cfscript>
		
		function default(rc){
			rc.qList = Application.appSettingsDAO.read();
		}

		function save(rc){
			if ( len(ID) )
				Application.appSettingsDAO.update(argumentcollection = rc);
			else
				Application.appSettingsDAO.create(argumentcollection = rc);
			
			rc.msg = "success:::App Settings saved successfully.";
			variables.fw.redirect("appSettings", "msg");		
		}
		
		function delete(rc){
			Application.appSettingsDAO.delete(rc.ID);
			rc.msg = "danger:::App Setting deleted successfully.";
			variables.fw.redirect("appSettings", "msg");
		}
		
		function addEdit (rc){
			param name = "rc.ID" default = "";
			rc.qData = Application.appSettingsDAO.read(ID = rc.ID);
		}
	</cfscript>

</cfcomponent>
