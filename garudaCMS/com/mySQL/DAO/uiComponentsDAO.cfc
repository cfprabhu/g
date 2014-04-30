<cfcomponent output="false" extends="baseDAO">

	
	<cffunction name="create" returntype="any">
		<cfargument name="title" type="any" required="false" />
		<cfargument name="content" type="any" required="false" />
		<cfargument name="template" type="any" required="false" />
		
		<cfset var qry ="" />	
		<cfset var ID = createUUID()>	
		
			<cfquery name="qry" datasource="#variables.dsn#" result="result">
				INSERT INTO tuicomponents (id,title,content,template) 
				VALUES (
						<cfqueryparam value='#ID#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.content#' cfsqltype='cf_sql_varchar'>,
						<cfqueryparam value='#arguments.template#' cfsqltype='cf_sql_varchar'>
						)			
			</cfquery>
		
		<cfreturn ID>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="ID" type="any" required="false" />
		
		<cfset var qry = "" />
		
		
			<cfquery name="qry" datasource="#variables.dsn#">
				SELECT *
				FROM tuicomponents
				WHERE 1 = 1 
				
				<cfif structKeyExists(arguments,"ID")>
				AND ID = <cfqueryparam value='#arguments.ID#' cfsqltype='cf_sql_varchar'>
				</cfif>
				
			</cfquery>
		
		<cfreturn qry />
	</cffunction>


	<cffunction name="directoryList" returntype="query">
  		<cfargument name="dirPath" type="string" default="#expandpath("..")#\themes\sandbox\">
  		
  		<cfset var qry = "" />
    
	    <cfdirectory directory="#arguments.dirPath#" name="qry" action="LIST" recurse="true" filter="*.cfm">
	    	<cfquery name="qry" dbtype="query">
	    		SELECT * FROM qry;
	    	</cfquery>
	    
	    	<cfreturn qry>
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="ID" type="any" required="false" />
		<cfargument name="title" type="any" required="false" />
		<cfargument name="content" type="any" required="false" />
		<cfargument name="template" type="any" required="false" /> 
		
		<cfset var qry = "" />
		
			<cfquery name="qry" datasource="#variables.dsn#">
				UPDATE tuicomponents
				SET title = <cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>, 
					content = <cfqueryparam value='#arguments.content#' cfsqltype='cf_sql_varchar'>, 
					template = <cfqueryparam value='#arguments.template#' cfsqltype='cf_sql_varchar'>
				WHERE ID= <cfqueryparam value='#arguments.ID#' cfsqltype='cf_sql_varchar'>
			</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="ID" type="any" required="false" />
		
		<cfset var qry = "" />
		
			<cfquery name="qry" datasource="#variables.dsn#">
				DELETE FROM tuicomponents
				WHERE ID = <cfqueryparam value='#arguments.ID#' cfsqltype='cf_sql_varchar'>
			</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
