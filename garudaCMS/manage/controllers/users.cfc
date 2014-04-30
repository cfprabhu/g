<cfcomponent output="false" hint="user FW/1 controller." extends="base">
	
	<cfscript>
		function default(rc){
			rc.qList = Application.usersDAO.read();
		}

		function save(rc){
			if (len(rc.id) ){
				if(rc.photo neq ""){
					rc.qData = Application.usersDAO.read(id=id);
					if(FileExists(expandpath("../assets/upload/#rc.qData.photo#")))
						FileDelete(expandpath("../assets/upload/#rc.qData.photo#"));
					if(FileExists(expandpath("../assets/thumbnail/#rc.qData.photo#")))
						FileDelete(expandpath("../assets/thumbnail/#rc.qData.photo#"));
					imgResult=fileupload(expandpath('../assets/upload'),"form.photo","image/jpeg,image/png,image/gif","Overwrite");
					img=ImageNew(expandpath('../assets/upload/#imgResult.SERVERFILE#'));
					ImageResize(img,"40","40","blackman",2);
					ImageWrite(img,expandpath('../assets/thumbnail/#imgResult.SERVERFILE#'));
					rc.photo=imgResult.SERVERFILE;
				}
				Application.usersDAO.update(argumentcollection=rc);
			}
			else{
				if(rc.photo neq ""){
					if(not DirectoryExists(expandpath("../assets/upload")))
						DirectoryCreate(expandpath("../assets/upload"));
					if(not DirectoryExists(expandpath("../assets/thumbnail")))
						DirectoryCreate(expandpath("../assets/thumbnail"));
					imgResult=fileupload(expandpath('../assets/upload'),"form.photo","image/jpeg,image/png","Overwrite");
					img=ImageNew(expandpath('../assets/upload/#imgResult.SERVERFILE#'));
					ImageResize(img,"40","40","blackman",2);
					ImageWrite(img,expandpath('../assets/thumbnail/#imgResult.SERVERFILE#'));
					rc.photo=imgResult.SERVERFILE;
				}
				Application.usersDAO.create(argumentcollection=rc);
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
