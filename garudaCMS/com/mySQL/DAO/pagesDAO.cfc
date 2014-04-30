<cfcomponent output="false" extends="baseDAO">
	
	<cffunction name="create" returntype="any">
		<cfargument name="parent_id" type="any" required="false" />
		<cfargument name="startDate" type="any" required="false" />
		<cfargument name="endDate" type="any" required="false" />
		<cfargument name="isHidden" type="any" required="false" />
		<cfargument name="insertDate" type="any" required="false" />
		<cfargument name="modifiedDate" type="any" required="false" />
		<cfargument name="sortOrder" type="any" required="false" />
		<cfargument name="isSecure" type="any" required="false" />
		
		<cfset var qry="" />
				
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tpages (
				parent_id,startDate,endDate,isHidden,insertDate,modifiedDate,sortOrder,isSecure
			) values (
				<cfqueryparam value='#arguments.parent_id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.startDate#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.endDate#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.isHidden#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.insertDate#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.modifiedDate#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.sortOrder#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.isSecure#' cfsqltype='cf_sql_varchar'>
			)			
		</cfquery>
		
		<cfreturn result.GENERATED_KEY>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT *
			FROM tpages
			where 1=1 
			
			<cfif structKeyExists(arguments,"id")>
			AND id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="id" type="any" required="false" />
		<cfargument name="parent_id" type="any" required="false" />
		<cfargument name="startDate" type="any" required="false" />
		<cfargument name="endDate" type="any" required="false" />
		<cfargument name="isHidden" type="any" required="false" />
		<cfargument name="insertDate" type="any" required="false" />
		<cfargument name="modifiedDate" type="any" required="false" />
		<cfargument name="sortOrder" type="any" required="false" />
		<cfargument name="isSecure" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tpages
			SET parent_id = <cfqueryparam value='#arguments.parent_id#' cfsqltype='cf_sql_varchar'>, 
			startDate = <cfqueryparam value='#arguments.startDate#' cfsqltype='cf_sql_varchar'>, 
			endDate = <cfqueryparam value='#arguments.endDate#' cfsqltype='cf_sql_varchar'>, 
			isHidden = <cfqueryparam value='#arguments.isHidden#' cfsqltype='cf_sql_varchar'>, 
			insertDate = <cfqueryparam value='#arguments.insertDate#' cfsqltype='cf_sql_varchar'>, 
			modifiedDate = <cfqueryparam value='#arguments.modifiedDate#' cfsqltype='cf_sql_varchar'>, 
			sortOrder = <cfqueryparam value='#arguments.sortOrder#' cfsqltype='cf_sql_varchar'>, 
			isSecure = <cfqueryparam value='#arguments.isSecure#' cfsqltype='cf_sql_varchar'>
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tpages
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
