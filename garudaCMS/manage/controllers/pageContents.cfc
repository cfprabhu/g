<cfcomponent output="false" hint="pagecontent FW/1 controller."  extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.pageContentsDAO.read();
		}

		function save(rc){
			if ( len(id) )
				Application.pageContentsDAO.update(argumentcollection=form);
			else
				Application.pageContentsDAO.create(argumentcollection=form);
			
			rc.msg = "success:::Tpagecontent saved successfully.";
			variables.fw.redirect("pageContents", "msg");		
		}
		
		function delete(rc){
			Application.pageContentsDAO.delete(url.id);
			rc.msg = "danger:::Tpagecontent deleted successfully.";
			variables.fw.redirect("pageContents", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.pageContentsDAO.read(id=id);
		}
	</cfscript>

</cfcomponent>
