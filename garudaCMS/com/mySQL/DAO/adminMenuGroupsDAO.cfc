<cfcomponent output="false" extends="baseDAO">
	
	<cffunction name="create" returntype="any">
		<cfargument name="title" type="any" required="false" />
		<cfargument name="isSuperAdmin" type="any" required="false" />
		<cfargument name="sortOrder" type="any" required="false" />
		<cfset var qry="" />
		<cfset sort =#arguments.sortOrder#+1 >
		<cfset var ID = createUUID()>
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tAdminMenugroups (
				id,title,sortOrder,isSuperAdmin
			) values (
				<cfqueryparam value='#ID#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#sort#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.isSuperAdmin#' cfsqltype='cf_sql_varchar'>
			)			
		</cfquery>
		
		<cfreturn ID>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="id" type="any" required="false" />
		<cfset var qry="" />
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT * FROM tAdminMenugroups
				where 1=1 
				<cfif structKeyExists(arguments,"id")>
					AND id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
				</cfif>
				order by sortOrder
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
	<cffunction name="maxSort">
		<cfargument name="o_title" type="any" required="false" />
		<cfquery name="qryMax" datasource="#variables.dsn#">
			select max(sortOrder) AS sort from tAdminMenugroups
				where title = <cfqueryparam value='#arguments.o_title#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		<cfreturn qryMax/>
	</cffunction>
	<cffunction name="update" returntype="void">
		<cfargument name="id" type="any" required="false" />
		<cfargument name="title" type="any" required="false" />
		<cfargument name="isSuperAdmin" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tAdminMenugroups
			SET title = <cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>, 
			isSuperAdmin = <cfqueryparam value='#arguments.isSuperAdmin#' cfsqltype='cf_sql_varchar'>
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tAdminMenugroups
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
