<cfcomponent output="false" hint="Tpage FW/1 controller." extends="base">
	
	<cfscript>
		
		function default(rc){
			rc.qList= Application.pagesDAO.read();
		}

		function save(rc){
			if ( len(id) )
				Application.pagesDAO.update(argumentcollection=form);
			else
				Application.pagesDAO.create(argumentcollection=form);
			
			rc.msg = "success:::Tpage saved successfully.";
			variables.fw.redirect("pages", "msg");		
		}
		
		function delete(rc){
			Application.pagesDAO.delete(url.id);
			rc.msg = "danger:::Tpage deleted successfully.";
			variables.fw.redirect("pages", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.pagesDAO.read(id=id);
		}
	</cfscript>

</cfcomponent>
