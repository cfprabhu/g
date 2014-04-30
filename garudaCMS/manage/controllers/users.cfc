<cfcomponent output="false" hint="user FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList= Application.usersDAO.read();
		}

		function save(rc){
			if (len(form.id) )
				Application.usersDAO.update(argumentcollection=form);
			else{
				if(not DirectoryExists(expandpath("..\assets\upload")))
					DirectoryCreate(expandpath("..\assets\upload"));
				if(not DirectoryExists(expandpath("..\assets\thumbnail")))
					DirectoryCreate(expandpath("..\assets\thumbnail"));
				res=fileupload("#expandpath('..\assets\upload')#","form.photo","image/jpeg","Overwrite");
				img=ImageNew("#expandpath('..\assets\upload\#res.SERVERFILE#')#");
				ImageResize(img,"10%","10%","blackman",2);
				ImageWrite(img,"#expandpath('..\assets\thumbnail\#res.SERVERFILE#')#");
				Application.usersDAO.create(argumentcollection=form,photo=#res.SERVERFILE#);
			}
			rc.msg = "success:::User saved successfully.";
			variables.fw.redirect("users", "msg");		
		}
		
		function delete(rc){
			Application.usersDAO.delete(url.id);
			rc.msg = "danger:::User deleted successfully.";
			variables.fw.redirect("users", "msg");
		}
		
		function addEdit (rc){
			param name="url.id" default="";
			rc.qData = Application.usersDAO.read(id=id);
		}
	</cfscript>

</cfcomponent>
