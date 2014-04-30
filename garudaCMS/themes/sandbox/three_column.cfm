<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="" class="threeCol">
<div id="container" class="">
	<cfinclude template="inc/header.cfm" />
	<div id="content" class="clearfix">
		<aside id="left">
			Left content
		</aside>
		<article>
			<nav>BreadCrumbListLinks</nav>
			Page content
			Main content UI component & Plugin content
		</article>
		<aside id="right">
			 Right content 
		</aside>
	</div>
	<cfinclude template="inc/footer.cfm" />
</div>
</body>
</html>
</cfoutput>