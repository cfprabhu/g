<cfoutput>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>GarudaCMS</title>

		<!-- Bootstrap -->
		<link href="#Application.root#/assets/css/bootstrap-3.1.1.min.css" rel="stylesheet">
		<link href="#Application.root#/assets/css/garudaCMS.css" rel="stylesheet">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		
		<!-- Static navbar -->
		<div class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#Application.root#/manage">Garuda CMS</a>
				</div>
				<cfif session.userID EQ 1>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<cfset arrMenu = ["AdminMenu","AdminMenuGroups","appSettings","page_uiComponent","page_userGroup","pageContents","pages","uiComponents","user_userGroup","userGroup_AdminMenu","userGroups","users"]>
						<cfloop array="#arrMenu#" index="arrItem">
							<cfif getSection() eq arrItem>
								<cfset activeCls = "active">
							<cfelse>
								<cfset activeCls = "">	
							</cfif>
							<li class="dropdown #activeCls#">
								<a href="" class="dropdown-toggle" data-toggle="dropdown">
									#arrItem# <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#buildurl('#arrItem#.default')#" >
										<span class="glyphicon glyphicon-list"></span> List</a>
									</li>
									<li>
										<a href="#buildurl('#arrItem#.addEdit')#" >
										<span class="glyphicon glyphicon-edit"></span> Add</a>
									</li>
								</ul>
							</li>
						</cfloop>
						
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#buildurl('main.logout')#" >
							<span class="glyphicon glyphicon-off"></span> Logout</a>
						</li>
					</ul>
				</div>
				</cfif>
			</div>
		</div>
		<div class="container"> 
			
			<cfif structKeyExists(rc, "msg") and rc.msg neq ''>
				<div class="alert alert-#listfirst(rc.msg,':::')#">
					<b>#htmleditformat(listlast(rc.msg, ':::'))#</b>
					<a class="close" data-dismiss="alert">x</a>
				</div>
			</cfif>
			#body# 
		</div>
			
		<div id="footer">
	      <div class="container">
	        <p class="text-muted" style="margin-top: 20px;">&copy; #year(now())# MitrahSoft</p>
	      </div>
	    </div>

		<!-- Modal -->
		<div class="modal fade" id="confirm-dialog" tabindex="-1" role="dialog" aria-labelledby="confirm-dialogLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title" id="confirm-dialogLabel">Confirm</h4>
		      </div>
		      <div class="modal-body">
		        Are you sure want to delete this data?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-warning-sign"></span> Delete</button>
		      </div>
		    </div>
		  </div>
		</div>
		

			
		<script src="#Application.root#/assets/js/jquery-1.10.2.min.js"></script>	
		<script src="#Application.root#/assets/js/bootstrap-3.1.1.min.js"></script>	

		<!--- To Do :: attached it only in necessary files  --->		
		<script src="#Application.root#/assets/js/jquery.tablesorter-2.0.5b.min.js"></script>
		<script src="#Application.root#/assets/js/jquery.validate-1.11.1.min.js"></script>
		<script src="#Application.root#/assets/js/jquery.validate.additional-methods-1.11.1.min.js"></script>

		<!--- To Do :: attached it only in necessary files  --->
		<script src="/assets/ckeditor/ckeditor.js"></script>
		<script src="/assets/ckeditor/adapters/jquery.js"></script>	

		<script type="text/javascript">
			$(function(){	
				
				
				/*  Add edit page validation end from here */
				$('[rel="bootTip"]').tooltip(); // List page tool tips			
				setupTablesorter();	 // list page sorting
				
				
				$('form').validate({	
					highlight: function(element, errorClass, validClass){
						$(element).parents("div.form-group").addClass("has-error").removeClass("has-success");
					},
					unhighlight: function(element, errorClass, validClass){
						$(element).parents(".has-error").removeClass("has-error").addClass("has-success");
					},
					errorPlacement: function($error, $element){
						$error.addClass("help-block error").appendTo($element.parents("div.controls"));
					}
				});

				$('.btn-default[value="Cancel"]').click(function(){
					window.location = '#buildurl("#getSection()#")#';
				});

			});	

			function setupTablesorter() {		  
			  $('table.tablesorter').each(function (i, e) {		        
				  var myHeaders = {}		        
				  $(this).find('th.nosort').each(function (i, e) {		            
				  myHeaders[$(this).index()] = { sorter: false };		        
			  });				        
			  $(this).tablesorter({ headers: myHeaders });		    });    		
			}		
				                  		
			function confirmDelete(id){
				$('##confirm-dialog').modal('show');
				$('##confirm-dialog').find('.modal-footer .btn-danger').unbind('click');
				$('##confirm-dialog').find('.modal-footer .btn-danger').on('click', function(e) {
					window.location = '#buildurl("#getSection()#.delete")#&id='+id;
				});
			}
		</script>	
	</body>
</html>
</cfoutput>