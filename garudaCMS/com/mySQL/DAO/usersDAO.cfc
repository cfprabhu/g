<cfcomponent output = "false" extends = "baseDAO">

	<cffunction name = "create" returntype = "any">
		<cfargument name = "firstName" type = "any" required = "false" />
		<cfargument name = "lastName" type = "any" required = "false" />
		<cfargument name = "username" type = "any" required = "false" />
		<cfargument name = "password" type = "any" required = "false" />
		<cfargument name = "email" type = "any" required = "false" />
		<cfargument name = "phot" type = "any" required = "false" />
		<cfargument name = "summary" type = "any" required = "false" />
		<cfargument name = "detailedBio" type = "any" required = "false" />
		<cfargument name = "photo" type = "any" required = "false"/>

		<cfset var qry  =  "" />
	 	<cfset var ID  =  createUUID() >
			<cfquery name = "qry" datasource = "#variables.dsn#" result = "result">
				INSERT INTO tusers (
					ID,firstName,lastName,username,password,email,
					<cfif arguments.photo neq "">
						thumb,photo,
					</cfif>summary,detailedBio
				) VALUES (
					<cfqueryparam value = '#ID#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.firstName#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.lastName#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.username#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.password#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.email#' cfsqltype = 'cf_sql_varchar'>,
					<cfif arguments.photo neq "">
						<cfqueryparam value = '#arguments.photo#' cfsqltype = 'cf_sql_varchar'>,
						<cfqueryparam value = '#arguments.photo#' cfsqltype = 'cf_sql_varchar'>,
					</cfif>
					<cfqueryparam value = '#arguments.summary#' cfsqltype = 'cf_sql_varchar'>,
					<cfqueryparam value = '#arguments.detailedBio#' cfsqltype = 'cf_sql_varchar'>
				)			
			</cfquery>
	</cffunction>
	
	
	<cffunction name = "read" returntype = "query">
		<cfargument name = "ID" type = "any" required = "false" />
		
		<cfset var qry = "" />
			<cfquery name = "qry" datasource = "#variables.dsn#">
				SELECT 
					<cfif structKeyExists(arguments,"ID")>
						*
					<cfelse>
						CONCAT(firstname,lastname) AS nam,username,password,email,photo,summary,detailedBio,ID
					</cfif>
				FROM tusers
				WHERE 1 = 1 
				<cfif structKeyExists(arguments,"ID")>
					AND ID = <cfqueryparam value = '#arguments.ID#' cfsqltype = 'cf_sql_varchar'>
				</cfif>
			</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name = "update" returntype = "voID">
		<cfargument name = "ID" type = "any" required = "false" />
		<cfargument name = "firstName" type = "any" required = "false" />
		<cfargument name = "lastName" type = "any" required = "false" />
		<cfargument name = "username" type = "any" required = "false" />
		<cfargument name = "password" type = "any" required = "false" />
		<cfargument name = "photo" type = "any" required = "false" default = ""/>
		<cfargument name = "email" type = "any" required = "false" />
		<cfargument name = "summary" type = "any" required = "false" />
		<cfargument name = "detailedBio" type = "any" required = "false" /> 
		
		<cfset var qry = "" />
			<cfquery name = "qry" datasource = "#variables.dsn#">
				UPDATE tusers
				SET firstName = <cfqueryparam value = '#arguments.firstName#' cfsqltype = 'cf_sql_varchar'>, 
					lastName = <cfqueryparam value = '#arguments.lastName#' cfsqltype = 'cf_sql_varchar'>, 
					username = <cfqueryparam value = '#arguments.username#' cfsqltype = 'cf_sql_varchar'>, 
					password = <cfqueryparam value = '#arguments.password#' cfsqltype = 'cf_sql_varchar'>, 
					email = <cfqueryparam value = '#arguments.email#' cfsqltype = 'cf_sql_varchar'>, 
					<cfif arguments.photo neq "">
						thumb = <cfqueryparam value = '#arguments.photo#' cfsqltype = 'cf_sql_varchar'>, 
						photo = <cfqueryparam value = '#arguments.photo#' cfsqltype = 'cf_sql_varchar'>, 
					</cfif>
					summary = <cfqueryparam value = '#arguments.summary#' cfsqltype = 'cf_sql_varchar'>, 
					detailedBio = <cfqueryparam value = '#arguments.detailedBio#' cfsqltype = 'cf_sql_varchar'>
				WHERE ID = <cfqueryparam value = '#arguments.ID#' cfsqltype = 'cf_sql_varchar'>
			</cfquery>
		<cfreturn />
	</cffunction>
	
	<cffunction name = "delete" returntype = "voID">
		<cfargument name = "ID" type = "any" required = "false" />
		
		<cfset var qry = "" />
			<cfquery name = "qry" datasource = "#variables.dsn#">
				DELETE FROM tusers
				WHERE ID = <cfqueryparam value = '#arguments.ID#' cfsqltype = 'cf_sql_varchar'>
			</cfquery>
		<cfreturn />
	</cffunction>
	
</cfcomponent>
