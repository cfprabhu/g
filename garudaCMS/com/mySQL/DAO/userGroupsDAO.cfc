<cfcomponent output="false" extends="baseDAO">
	
	<cffunction name="create" returntype="any">
		<cfargument name="title" type="any" required="false" />
		<cfargument name="isAdmin" required="false" default="0" />
		<cfargument name="isSuperAdmin" required="false" default="0"/>
		
		<cfset var qry="" />
		<cfset id = createUUID()>
		
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tusergroups (
				id,title,isAdmin,isSuperAdmin
			) values (
			    <cfqueryparam value='#id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.isAdmin#' cfsqltype="cf_sql_bit">,
				<cfqueryparam value='#arguments.isSuperAdmin#' cfsqltype="cf_sql_bit">
			)			
		</cfquery>
		
		<cfreturn >		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT *
			FROM tusergroups
			where 1=1 
			
			<cfif structKeyExists(arguments,"id")>
			AND id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">

		<cfargument name="id" type="any" required="false" />
		<cfargument name="title" type="any" required="false" />
		<cfargument name="isAdmin" type="any" required="false" default="0" />
		<cfargument name="isSuperAdmin" type="any" required="false" default="0" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tusergroups
			SET title = <cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>, 
			isAdmin = <cfqueryparam value='#arguments.isAdmin#' cfsqltype='cf_sql_bit'>, 
			isSuperAdmin = <cfqueryparam value='#arguments.isSuperAdmin#' cfsqltype='cf_sql_bit'>
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tusergroups
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
