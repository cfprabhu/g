component extends="ApplicationBase" output="false"{

	
	function setupRequest(){
		
		super.setupRequest();
		
	 	param name="session.userId" default="0"; 

	 	if(session.userId neq 1 and request.item does not contain 'login') {
			location(url="index.cfm?action=main.login",addtoken='false');
		}
		
	}
}