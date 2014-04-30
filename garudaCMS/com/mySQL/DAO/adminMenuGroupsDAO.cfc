<cfcomponent output = "false" extends = "baseDAO">
	
	<cffunction name = "create" returntype = "any">
		<cfargument name = "title" type = "any" required = "false" />
		<cfargument name = "isSuperAdmin" type = "any" default = "0" required = "false" />
		<cfargument name = "sortOrder" type = "any" default = "1" required = "false" />

		<cfset var qry = "" />
		<cfset var ID  =  createUUID()>
		<cfquery name = "qry" datasource = "#variables.dsn#" result = "result">
			INSERT INTO tAdminMenugroups (ID,title,sortOrder,isSuperAdmin)
				SELECT
					<cfqueryparam value = '#ID#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.title#' cfsqltype = 'cf_sql_varchar'>,
					IFNULL(MAX(sortOrder),0)+1 AS sortOrder,
					<cfqueryparam value = '#arguments.isSuperAdmin#' cfsqltype = 'cf_sql_varchar'>
				FROM tAdminMenugroups 
		</cfquery>
		<cfreturn ID>		
	</cffunction>
	
	<cffunction name = "read" returntype = "query">
		<cfargument name = "ID" type = "any" required = "false" />

		<cfset var qry = "" />
		<cfquery name = "qry" datasource = "#variables.dsn#">
			SELECT * FROM tAdminMenugroups
				WHERE 1 = 1 
				<cfif structKeyExists(arguments,"ID")>
					AND ID  =  <cfqueryparam value = '#arguments.ID#' cfsqltype = 'cf_sql_varchar'>
				</cfif>
				order by sortOrder
		</cfquery>
		
		<cfreturn qry />
	</cffunction>

	<cffunction name = "update" returntype = "voID">
		<cfargument name = "ID" type = "any" required = "false" />
		<cfargument name = "title" type = "any" required = "false" />
		<cfargument name = "isSuperAdmin" type = "any" required = "false" default = "0"/> 
		
		<cfset var qry = "" />
		<cfquery name = "qry" datasource = "#variables.dsn#">
			UPDATE tAdminMenugroups
			SET title = <cfqueryparam value = '#arguments.title#' cfsqltype = 'cf_sql_varchar'>, 
			isSuperAdmin = <cfqueryparam value = '#arguments.isSuperAdmin#' cfsqltype = 'cf_sql_varchar'>
			WHERE ID = <cfqueryparam value = '#arguments.ID#' cfsqltype = 'cf_sql_varchar'>
		</cfquery>
		<cfreturn />
	</cffunction>
	
	
	<cffunction name = "delete" returntype = "voID">
		<cfargument name = "ID" type = "any" required = "false" />
		
		<cfset var qry = "" />
			<cfquery name = "qry" datasource = "#variables.dsn#">
				DELETE FROM tAdminMenugroups
				WHERE ID = <cfqueryparam value = '#arguments.ID#' cfsqltype = 'cf_sql_varchar'>
			</cfquery>
		<cfreturn />
	</cffunction>
	
</cfcomponent>
