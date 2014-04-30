<cfset request.layout = false />

<style>
	#error_main{width: 50%; color: red; border: 2px dotted red; background-color: #f9f9f9; padding: 10px;}
	#span100{width: 100%; text-align: left;}
</style>
<!--- courtesy of Andreas Schuldhaus --->

<div id="error_main">
	<h1>ERROR!</h1>
	<div id="span100">
		<p><b>An error occurred!</b></p>
		<cfoutput>
			<cfif structKeyExists( request, 'failedAction' )>
				<b>Action:</b> #request.failedAction#<br/>
			<cfelse>
				<b>Action:</b> unknown<br/>
			</cfif>
			<b>Error:</b> #request.exception.cause.message#<br/>
			<b>Type:</b> #request.exception.cause.type#<br/>
			<b>Details:</b> #request.exception.cause.detail#<br/>
		</cfoutput>
	</div>
</div>

<cfdump var="#request.exception#">