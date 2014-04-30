<cfcomponent output="false" extends="baseDAO">
	
	<cffunction name="create" returntype="any">
		<cfargument name="page_id" type="any" required="false" />
		<cfargument name="userGroup_id" type="any" required="false" />
		
		<cfset var qry="" />
				
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tpage_usergroup (
				page_id,userGroup_id
			) values (
				<cfqueryparam value='#arguments.page_id#' cfsqltype='cf_sql_varchar'>,
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
			FROM tpage_usergroup
			where 1=1 
			
			<cfif structKeyExists(arguments,"xID")>
			AND xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="xID" type="any" required="false" />
		<cfargument name="page_id" type="any" required="false" />
		<cfargument name="userGroup_id" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tpage_usergroup
			SET page_id = <cfqueryparam value='#arguments.page_id#' cfsqltype='cf_sql_varchar'>, 
			userGroup_id = <cfqueryparam value='#arguments.userGroup_id#' cfsqltype='cf_sql_varchar'>
			WHERE xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="xID" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tpage_usergroup
			WHERE xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
