<cfcomponent output="false" extends="baseDAO">

	
	<cffunction name="create" returntype="any">
		<cfargument name="userGroup_id" type="any" required="false" />
		<cfargument name="AdminMenu_id" type="any" required="false" />
		
		<cfset var qry="" />
				
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tusergroup_AdminMenu (
				userGroup_id,AdminMenu_id
			) values (
				<cfqueryparam value='#arguments.userGroup_id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.AdminMenu_id#' cfsqltype='cf_sql_varchar'>
			)			
		</cfquery>
		
		<cfreturn result.GENERATED_KEY>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="xID" type="any" required="false" />
		
		<cfset var qry="" />
		
		
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT *
			FROM tusergroup_AdminMenu
			where 1=1 
			
			<cfif structKeyExists(arguments,"xID")>
			AND xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="xID" type="any" required="false" />
		<cfargument name="userGroup_id" type="any" required="false" />
		<cfargument name="AdminMenu_id" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tusergroup_AdminMenu
			SET userGroup_id = <cfqueryparam value='#arguments.userGroup_id#' cfsqltype='cf_sql_varchar'>, 
			AdminMenu_id = <cfqueryparam value='#arguments.AdminMenu_id#' cfsqltype='cf_sql_varchar'>
			WHERE xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="xID" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tusergroup_AdminMenu
			WHERE xID = <cfqueryparam value='#arguments.xID#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
