<cfcomponent output="false" hint="Base FW/1 controller.">
	
	<cfscript>
		variables.fw = "";

		public any function init(fw){
			 variables.fw = arguments.fw;
		 	 return this;
		}
	</cfscript>

</cfcomponent>