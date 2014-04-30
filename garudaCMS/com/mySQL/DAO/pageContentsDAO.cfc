<cfcomponent output="false" extends="baseDAO">

	
	<cffunction name="create" returntype="any">
		<cfargument name="Page_id" type="any" required="false" />
		<cfargument name="template" type="any" required="false" />
		<cfargument name="title" type="any" required="false" />
		<cfargument name="linkTitle" type="any" required="false" />
		<cfargument name="target" type="any" required="false" />
		<cfargument name="urlTitle" type="any" required="false" />
		<cfargument name="link" type="any" required="false" />
		<cfargument name="metaTitle" type="any" required="false" />
		<cfargument name="metaKeywords" type="any" required="false" />
		<cfargument name="metaDescription" type="any" required="false" />
		<cfargument name="content" type="any" required="false" />
		<cfargument name="isPublished" type="any" required="false" />
		<cfargument name="insertDate" type="any" required="false" />
		<cfargument name="insertBy" type="any" required="false" />
		
		<cfset var qry="" />
				
		<cfquery name="qry" datasource="#variables.dsn#" result="result">
			INSERT INTO tpagecontents (
				Page_id,template,title,linkTitle,target,urlTitle,link,metaTitle,metaKeywords,
				metaDescription,content,isPublished,insertDate,insertBy
			) values (
				<cfqueryparam value='#arguments.Page_id#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.template#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.linkTitle#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.target#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.urlTitle#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.link#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.metaTitle#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.metaKeywords#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.metaDescription#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.content#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.isPublished#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.insertDate#' cfsqltype='cf_sql_varchar'>,
				<cfqueryparam value='#arguments.insertBy#' cfsqltype='cf_sql_varchar'>
			)			
		</cfquery>
		
		<cfreturn result.GENERATED_KEY>		
	</cffunction>
	
	
	<cffunction name="read" returntype="query">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		
		<cfquery name="qry" datasource="#variables.dsn#">
			SELECT *
			FROM tpagecontents
			where 1=1 
			
			<cfif structKeyExists(arguments,"id")>
			AND id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
			</cfif>
			
		</cfquery>
		
		<cfreturn qry />
	</cffunction>
			
	<cffunction name="update" returntype="void">
		<cfargument name="id" type="any" required="false" />
		<cfargument name="Page_id" type="any" required="false" />
		<cfargument name="template" type="any" required="false" />
		<cfargument name="title" type="any" required="false" />
		<cfargument name="linkTitle" type="any" required="false" />
		<cfargument name="target" type="any" required="false" />
		<cfargument name="urlTitle" type="any" required="false" />
		<cfargument name="link" type="any" required="false" />
		<cfargument name="metaTitle" type="any" required="false" />
		<cfargument name="metaKeywords" type="any" required="false" />
		<cfargument name="metaDescription" type="any" required="false" />
		<cfargument name="content" type="any" required="false" />
		<cfargument name="isPublished" type="any" required="false" />
		<cfargument name="insertDate" type="any" required="false" />
		<cfargument name="insertBy" type="any" required="false" /> 
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			UPDATE tpagecontents
			SET Page_id = <cfqueryparam value='#arguments.Page_id#' cfsqltype='cf_sql_varchar'>, 
			template = <cfqueryparam value='#arguments.template#' cfsqltype='cf_sql_varchar'>, 
			title = <cfqueryparam value='#arguments.title#' cfsqltype='cf_sql_varchar'>, 
			linkTitle = <cfqueryparam value='#arguments.linkTitle#' cfsqltype='cf_sql_varchar'>, 
			target = <cfqueryparam value='#arguments.target#' cfsqltype='cf_sql_varchar'>, 
			urlTitle = <cfqueryparam value='#arguments.urlTitle#' cfsqltype='cf_sql_varchar'>, 
			link = <cfqueryparam value='#arguments.link#' cfsqltype='cf_sql_varchar'>, 
			metaTitle = <cfqueryparam value='#arguments.metaTitle#' cfsqltype='cf_sql_varchar'>, 
			metaKeywords = <cfqueryparam value='#arguments.metaKeywords#' cfsqltype='cf_sql_varchar'>, 
			metaDescription = <cfqueryparam value='#arguments.metaDescription#' cfsqltype='cf_sql_varchar'>, 
			content = <cfqueryparam value='#arguments.content#' cfsqltype='cf_sql_varchar'>, 
			isPublished = <cfqueryparam value='#arguments.isPublished#' cfsqltype='cf_sql_varchar'>, 
			insertDate = <cfqueryparam value='#arguments.insertDate#' cfsqltype='cf_sql_varchar'>, 
			insertBy = <cfqueryparam value='#arguments.insertBy#' cfsqltype='cf_sql_varchar'>
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>
		
		<cfreturn />
	</cffunction>
	
	
	<cffunction name="delete" returntype="void">
		<cfargument name="id" type="any" required="false" />
		
		<cfset var qry="" />
		
		<cfquery name="qry" datasource="#variables.dsn#">
			DELETE FROM tpagecontents
			WHERE id = <cfqueryparam value='#arguments.id#' cfsqltype='cf_sql_varchar'>
		</cfquery>

		<cfreturn />
	</cffunction>
	
</cfcomponent>
