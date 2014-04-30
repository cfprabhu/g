<cfoutput>
	<form class="form-horizontal form-signin" role="form" action="#buildurl('main.login_process')#" method="post" >

        <h2 class="form-signin-heading">Please sign in</h2>

        <div class="form-group">
            <label class="control-label col-sm-3" for="username">User name</label>
            <div class="col-sm-9 controls">
                <input name="username" type="text" autofocus="" required="" placeholder="username" class="form-control">
            </div>
        </div>
        
        <div class="form-group">
            <label class="control-label col-sm-3" for="Password">Password</label>
            <div class="col-sm-9 controls">
                <input name="Password" type="password" required="" placeholder="Password" class="form-control">
            </div>
        </div>
        <!---
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label> 
        --->
        <button type="submit" class="btn btn-lg btn-primary btn-block">Sign in</button>
      </form>
</cfoutput>