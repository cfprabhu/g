<cfcomponent output="false" extends="baseDAO">

	<cffunction name="create" returntype="any">
		<cfargument name="user_id" type="any" required="false" />
		<cfargument name="userGroup_id" type="any" required="false" />
		
		<cfset var qry="" />
				
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tuser_usergroup (
				user_id,userGroup_id
			) values (
				<cfqueryparam value='#arguments.user_id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.userGroup_id#' cfsqltype='cf_sql_varchar'>
			)			
		</cfquery>
		
		<cfreturn result.GENERATED_KEY>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="xID" type="any" required="false" />
		
		<cfset var qry="" />
		
		
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT *
			FROM tuser_usergroup
			where 1=1 
			
			<cfif structKeyExists(arguments,"xID")>
			AND xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="xID" type="any" required="false" />
		<cfargument name="user_id" type="any" required="false" />
		<cfargument name="userGroup_id" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tuser_usergroup
			SET user_id = <cfqueryparam value='#arguments.user_id#' cfsqltype='cf_sql_varchar'>, 
			userGroup_id = <cfqueryparam value='#arguments.userGroup_id#' cfsqltype='cf_sql_varchar'>
			WHERE xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="xID" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tuser_usergroup
			WHERE xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
