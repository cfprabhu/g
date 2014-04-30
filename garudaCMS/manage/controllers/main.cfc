component output="false" extends="base" {
	
	public any function login(rc){
		if(session.userID EQ 1){
			variables.fw.redirect('pages');
		}
	}
	public any function login_process(rc){
		if(form.username eq "admin" and form.password eq "p@ssw0rd"){
			session.userId=1;
		}
		
		if(session.userID EQ 1){
			variables.fw.redirect('pages');
		}
		else{
			rc.msg = "danger:::You don't have permission";
			variables.fw.redirect("main.login", "msg");
		}
		
	}
	
	public any function logout(rc){
		structClear(session);
		variables.fw.redirect('main.login');
	}
	
}