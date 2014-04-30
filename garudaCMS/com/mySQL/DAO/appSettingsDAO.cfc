<cfcomponent output="false" extends="baseDAO">
	
	<cffunction name="create" returntype="any">
		<cfargument name="title" type="any" required="false" />
		<cfargument name="variable" type="any" required="false" />
		<cfargument name="value" type="any" required="false" />
		<cfargument name="isSystem" type="any" default="0" required="false" />
		
		<cfset var qry = "" />
		<cfset var ID = createUUID()>
		
			<cfquery name="qry" datasource="#variables.dsn#" result="result">
				INSERT INTO tappsettings (ID,title,variable,value,isSystem) 
				values (
						<cfqueryparam value='#ID#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.variable#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.value#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.isSystem#' cfsqltype='cf_sql_varchar'>
						)			
			</cfquery>
		
		<cfreturn ID>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="ID" type="any" required="false" />
		
		<cfset var qry = "" />
		
		
			<cfquery name="qry" datasource="#variables.dsn#">
				SELECT *
				FROM tappsettings
				WHERE  1 = 1 
				
				<cfif structKeyExists(arguments,"ID")>
				AND ID = <cfqueryparam value='#arguments.ID#' cfsqltype='cf_sql_varchar'>
				</cfif>
				ORDER BY isSystem,title
			</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="ID" type="any" required="false" />
		<cfargument name="title" type="any" required="false" />
		<cfargument name="variable" type="any" required="false" />
		<cfargument name="value" type="any" required="false" />
		<cfargument name="isSystem" type="any" required="false" default="0"/>

		<cfset var qry = "" />
		
			<cfquery name="qry" datasource="#variables.dsn#">
				UPDATE tappsettings
				SET title = <cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>, 
					variable = <cfqueryparam value='#arguments.variable#' cfsqltype='cf_sql_varchar'>, 
					value = <cfqueryparam value='#arguments.value#' cfsqltype='cf_sql_varchar'>, 
					isSystem = <cfqueryparam value='#arguments.isSystem#' cfsqltype='cf_sql_varchar'>
				WHERE ID = <cfqueryparam value='#arguments.ID#' cfsqltype='cf_sql_varchar'>
			</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="ID" type="any" required="false" />
		
		<cfset var qry = "" />
		
			<cfquery name="qry" datasource="#variables.dsn#">
				DELETE FROM tappsettings
				WHERE ID = <cfqueryparam value='#arguments.ID#' cfsqltype='cf_sql_varchar'>
			</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
