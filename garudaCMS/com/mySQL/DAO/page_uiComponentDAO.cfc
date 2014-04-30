<cfcomponent output="false" extends="baseDAO">
	
	<cffunction name="create" returntype="any">
		<cfargument name="page_id" type="any" required="false" />
		<cfargument name="uiComponent_id" type="any" required="false" />
		<cfargument name="uiRegion" type="any" required="false" />
		<cfargument name="order" type="any" required="false" />
		
		<cfset var qry="" />
				
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tpage_uicomponent (
				page_id,uiComponent_id,uiRegion,order
			) values (
				<cfqueryparam value='#arguments.page_id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.uiComponent_id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.uiRegion#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.order#' cfsqltype='cf_sql_varchar'>
			)			
		</cfquery>
		
		<cfreturn result.GENERATED_KEY>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT *
			FROM tpage_uicomponent
			where 1=1 
			
			<cfif structKeyExists(arguments,"id")>
			AND id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="id" type="any" required="false" />
		<cfargument name="page_id" type="any" required="false" />
		<cfargument name="uiComponent_id" type="any" required="false" />
		<cfargument name="uiRegion" type="any" required="false" />
		<cfargument name="order" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tpage_uicomponent
			SET page_id = <cfqueryparam value='#arguments.page_id#' cfsqltype='cf_sql_varchar'>, 
			uiComponent_id = <cfqueryparam value='#arguments.uiComponent_id#' cfsqltype='cf_sql_varchar'>, 
			uiRegion = <cfqueryparam value='#arguments.uiRegion#' cfsqltype='cf_sql_varchar'>, 
			order = <cfqueryparam value='#arguments.order#' cfsqltype='cf_sql_varchar'>
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tpage_uicomponent
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
