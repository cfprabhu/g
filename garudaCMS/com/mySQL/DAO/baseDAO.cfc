<cfcomponent output="false" hint="Base DAO.">
	
	<cfscript>
		variables.dsn = "";

		public any function init(dsn){
			 variables.dsn = arguments.dsn;
		 	 return this;
		}
	</cfscript>

</cfcomponent>