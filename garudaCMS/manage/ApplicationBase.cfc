component extends="framework" output="false"{

	this.name = "GarudaCMS";
	this.sessionManagement = true;
	this.sessionTimeout = CreateTimeSpan(1, 23, 59, 59);
	this.mappings["/com"] = expandpath('..')&'/com'; 


	variables.framework = {
		defaultSection = 'main',
		defaultItem = 'default',
		home = 'main.login',
		reloadApplicationOnEveryRequest = true
	};
	
	function setupRequest(){
		
		Application.root = "/g/garudaCMS";
		Application.DSN = "garudaDSN";
		
		Application.AdminMenuDAO = createobject("component","com.mySQL.DAO.AdminMenuDAO").init(Application.DSN);
		Application.AdminMenuGroupsDAO = createobject("component","com.mySQL.DAO.AdminMenuGroupsDAO").init(Application.DSN);
		Application.appSettingsDAO = createobject("component","com.mySQL.DAO.appSettingsDAO").init(Application.DSN);
		Application.page_uiComponentDAO = createobject("component","com.mySQL.DAO.page_uiComponentDAO").init(Application.DSN);
		Application.page_userGroupDAO = createobject("component","com.mySQL.DAO.page_userGroupDAO").init(Application.DSN);
		Application.pageContentsDAO = createobject("component","com.mySQL.DAO.pageContentsDAO").init(Application.DSN);
		Application.pagesDAO = createobject("component","com.mySQL.DAO.pagesDAO").init(Application.DSN);
		Application.uiComponentsDAO = createobject("component","com.mySQL.DAO.uiComponentsDAO").init(Application.DSN);
		Application.user_userGroupDAO = createobject("component","com.mySQL.DAO.user_userGroupDAO").init(Application.DSN);
		Application.userGroup_AdminMenuDAO = createobject("component","com.mySQL.DAO.userGroup_AdminMenuDAO").init(Application.DSN);
		Application.userGroupsDAO = createobject("component","com.mySQL.DAO.userGroupsDAO").init(Application.DSN);
		Application.usersDAO = createobject("component","com.mySQL.DAO.usersDAO").init(Application.DSN);
		
	}
}