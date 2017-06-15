<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head><title>
	教师主页
</title><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Cache-Control" content="no-cache" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="shortcut icon" href="favicon.ico" />
        <!-- Bootstrap core CSS -->
        <link rel="shortcut icon" href="custom/favicon.ico"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        
        <link href="css/bootstrap-reset.css" rel="stylesheet" />
        <link href="css/typeaheadjs.css" rel="stylesheet" />
        <link href="assets/bootstrap-accessibility-plugin/css/bootstrap-accessibility.css" rel="stylesheet" />
			<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/bootstrap-datepicker/Content/bootstrap-datepicker.css" rel="stylesheet" />
        
        <link href="assets/jquery-multi-select/css/multi-select.css" rel="stylesheet" />
        
    
        <!-- Custom styles for this template -->
        
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/style-responsive.css" rel="stylesheet" />
        
        <link href="css/open-sans-font.css" rel="stylesheet" />
        <link href="css/custom.css" rel="stylesheet" />
        <link href="css/tasks.css" rel="stylesheet" />

        
  <style>
            /* Tagline and Background Image */

            #logocontainer.panel-body {
        	    margin:0 auto;
	            vertical-align: middle;
	            text-align: center;
	            min-height: 140px !important;
	            max-height: 140px !important;
	            padding-top: 15px; /* EMS_UI_LOGO_PADDING */
            }

            #taglinebody {
        	    vertical-align: middle;
	            background: url(custom/schoolimage.png) no-repeat center center; /* EMS_UI_BACKGROUND_IMAGE? */
	            min-height: 140px;
	            background-position: 25% 40%;
	            border-radius: 5px;
	            padding: 0px;	
            }

            h3.taglinetext {
                opacity: 0.9;
	            font-size: 1.1em;
	            width: 100%;
	            letter-spacing: 1px;
	            text-align: center;
	            color: #FFFFFF; /* EMS_UI_HEADLINE_COLOR */
	            background: #1C86EE; /* EMS_UI_PRIMARY_COLOR */
	            margin: 56px auto !important;
	            padding: 6px;	
            }

            ul.nav.navbar-nav.navbar-right.a {
	            color:#1C86EE !important; /* EMS_UI_PRIMARY_COLOR */
            }

            a {
	            color:#5CACEE !important; /* EMS_UI_PRIMARY_COLOR */
            }

            a:hover, a:focus {
	            color:#2D194B !important; /* EMS_UI_SECONDARY_COLOR */
            }

            a.navbar-brand, li.nav {
	            color:#FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */
            }

            .navbar-inverse .navbar-nav>li>a { /* EMS_UI_HEADLINE_COLOR */
	            color:#FFFFFF !important;
            }

            a.dropdown-toggle {
                color:#FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */
            }

            .dropdown-menu > li {
	            color:#FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */
            }

            .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
	            background-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */
	            color: #FFFFFF !important;
	            text-decoration: none;	
            }

            a.list-group-item:hover {
                color: #2D194B !important; /* EMS_UI_SECONDARY_COLOR */
            }

            .navbar-inverse {
                background-color: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
                border-color: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
            }

            .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
                background-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */
                color: #FFFFFF; /* EMS_UI_HEADLINE_COLOR */
                text-decoration: none;
            }

            .navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:hover, .navbar-inverse .navbar-nav > .active > a:focus, .navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:focus{
                background-color: #2D194B !important; /* EMS_UI_SECONDARY_COLOR */
            }

            .profile-nav .user-heading {
                background: #2D194B; /* EMS_UI_SECONDARY_COLOR */
                color: #FFFFFF; /* EMS_UI_HEADLINE_COLOR */
                border-radius: 4px 4px 0 0;
                -webkit-border-radius: 4px 4px 0 0;
                padding: 30px;
                text-align: center;
            }

            .panel-heading .nav {
                border: medium none;
                font-size: 13px;
                background:#1C86EE ;  /* EMS_UI_PRIMARY_COLOR */
                border-radius: 5px;
                margin: -10px -15px -11px;
            }

            .panel-heading .nav > li.active > a {
	            color: #1C86EE  !important;  /* EMS_UI_PRIMARY_COLOR */
            }

            .panel-heading .nav > li.active > a, .panel-heading .nav > li > a:hover {
	            color: #2D194B !important;  /* EMS_UI_SECONDARY_COLOR */
            }

            .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active a {
	            background: #f8f7f5 !important;
	            border-left: 5px solid #1C86EE ;   /* EMS_UI_PRIMARY_COLOR */
	            color: #303030 !important;  /* Black color used for all sites */
            }

            .site-footer {
	            background: #1C86EE; /* EMS_UI_PRIMARY_COLOR */
	            color: #FFFFFF;  /* EMS_UI_HEADLINE_COLOR */
	            padding: 10px 0;
            }

            .form-signin h2.form-signin-heading {
                margin: 0;
                padding:20px 15px;
                text-align: center;
	            background:#1C86EE ; /* EMS_UI_PRIMARY_COLOR */
                border-radius: 5px 5px 0 0;
                -webkit-border-radius: 5px 5px 0 0;
                color: #fff;
                font-size: 18px;
                text-transform: uppercase;
                font-weight: 300;
                font-family: 'Open Sans', sans-serif; /* Open Sans for all, Font Style - Set by Google */
            }

            .task-thumb-details h1, .task-thumb-details h1 a, .task-progress h1, .task-progress h1 a {
                color: #1C86EE ; /* EMS_UI_PRIMARY_COLOR */
                font-size: 18px;
                margin: 0;
                padding: 0;
                font-weight: 400;
            }

            .btn-primary {
	            background-color:#1C86EE ; /* EMS_UI_PRIMARY_COLOR */
                border-color: #1C86EE ; /* EMS_UI_PRIMARY_COLOR */
	            color:#FFFFFF; /* EMS_UI_HEADLINE_COLOR */
            }

            .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open .dropdown-toggle.btn-primary {
                background-color: #1C86EE; /* EMS_UI_SECONDARY_COLOR */
                border-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */
                color: #fff !important;
            }

            .activity.red span {
                background: #2D194B; /* EMS_UI_SECONDARY_COLOR */
            }

            .ms-container .ms-selectable li.ms-hover, .ms-container .ms-selection li.ms-hover {
                background-color: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
                color: #FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */
                cursor: pointer;
                text-decoration: none;
            }

            ::selection {
                background: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
                color: #fff;
            }


            ::-moz-selection {
                background: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
                color: #fff;
            }

            .bio-desk h4.title2 {
            color: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
            }

            .label-primary {
	            background-color: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
            }

            .badge.bg-primary {
            background: #1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
            }
        
            .text-center a {
	            color:#FFFFFF !important;   /* EMS_UI_HEADLINE_COLOR */
	            text-decoration: underline;
            }

            .modal-header {
                background:#1C86EE  !important; /* EMS_UI_PRIMARY_COLOR */
            }
        </style>
    
    <!-- Get jQuery from the Microsoft CDN and fallback to the local copy, if not available -->
    <script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.0.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js">\x3C/script>')</script>
	<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body class="boxed-page">
    <form name="aspnetForm" method="post" action="" id="aspnetForm">

    <div class="container">
        <section id="container" class="">

            <!--main content start-->
            <section id="primary-content">
                <section class=" wrapper site-min-height">
                    <div class="row">
                        <div class="col-lg-3">
                            <!-- banner start -->
                            <div class="row">
                                <div class="col-xs-12">
                                    <section class="panel">
                                        <a href="http://sm.xmu.edu.cn/html/about/department/marketing/" target="_blank" id="ctl00_BannerLink">
                                            <div id="logocontainer" class="panel-body">
                                                       <img id="SchoolImg" title="厦门大学'" src="custom/customlogo.png" alt="厦门大学管理学院图标'" style="border-width:0px;" />
                                            </div>
                                        </a>
                                    </section>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-xs-12">
                                    <section class="panel">
                                        <a id="ctl00_Banner2Link">
                                            <div id="taglinebody" class="panel-body">
                                                    <h3 class="taglinetext"><strong id="ctl00_DepartmentText">市场学系</strong>&nbsp;<span id="ctl00_SiteNameText">实验管理系统</span></span></h3>
                                            </div>
                                        </a>
                                    </section>
                                </div>
                            </div>
                        </div>
                        <!-- banner end -->

                        
 <div class="col-lg-12">
                                    
<div style="border:#1C86EE;">
    <!--navigation start-->

        <!-- Brand and toggle get grouped for better mobile display -->
<ul class="nav navbar-default nav-pills nav-justified" style="font-size:16px;font-color:#000000">
	<li style="font-size:16px;color:#000000" class="active" id="l1" ><a style="font-size:16px;color:#000000" href="ListResentExperiments"><span style="color:white;" class="glyphicon glyphicon-home"></span>&nbsp;<span style="color:white;">主页</span></a></li>
	<li><a href="ListTeacherExperiments">我的实验</a></li>
	<li><a href="ListAllExperiments2">所有实验</a></li>
	<li><a href="addexperimentcate">创建实验</a></li>
	<li><a href="ListTeachersInfo" target='_blank'>个人信息</a></li>
	<li><a href="return_Exitmain">退出登录&nbsp;<span class="glyphicon glyphicon-log-out"></span></a></li>
</ul>

</div>

 </div> 
 							<c:if test="${sessionScope.teachers_name!=null}">
                            <div id="ctl00_UserInfoSection" class="col-lg-12">
                                <p class="user pull-right">
                                    <span id="loginname">${sessionScope.teachers_name}</span>&nbsp;(<span>Teacher</span>)
                                </p>
                            </div>
							</c:if>
							<c:if test="${sessionScope.teachers_name==null}">
                            <div id="ctl00_UserInfoSection" class="col-lg-12">
                                <p class="user pull-right">
                                    <span id="loginname">请点击<a href="login">登录</a>！</span>
                                </p>
                            </div>
							</c:if>
                    </div>

                    <!-- START NOTIFICATIONS -->
                    
                    <!-- END NOTIFICATIONS -->
                    
                    <!-- page start-->
                    
    
    

    

    
    
        

    
    
        <div class="row">
            <div class="col-sm-6">
                <section class="panel">
                    <header class="panel-heading">
                        <span id="ctl00_ContentPlaceHolder1_lblMyStudies" style="font-family:SimHei">我的实验</span>
                    </header>
                    <div class="list-group">
                        <a target='_blank' href="ListTeacherExperiments" id="ctl00_ContentPlaceHolder1_lnkMyStudies1" class="list-group-item"><span class="glyphicon glyphicon-tag"></span>&nbsp;&nbsp;查看、编辑我的实验</a>
                        
                    </div>
                </section>

                <section class="panel">
                    <header class="panel-heading">
                        <span id="ctl00_ContentPlaceHolder1_lblAllStudies_Researcher" style="font-family:SimHei">所有实验</span>
                    </header>
                    <div class="list-group">
                        <a target='_blank' href="teachersexperiment" id="ctl00_ContentPlaceHolder1_lnkAllStudies_Researcher" class="list-group-item"><span class="glyphicon glyphicon-paperclip"></span>&nbsp;&nbsp;查看所有实验</a>
                    </div>
                </section>

                <section class="panel">
                    <header class="panel-heading">
                        <span id="ctl00_ContentPlaceHolder1_lblAddNewStudy" style="font-family:SimHei">创建实验</span>
                    </header>
                    <div class="list-group">
                        <a target='_blank' href="addexperimentcate" id="ctl00_ContentPlaceHolder1_lnkAddNewStudy" class="list-group-item"><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;创建新的实验</a>
                    </div>
                </section>

                 <section class="panel">
                    <header class="panel-heading">
                        <span id="ctl00_ContentPlaceHolder1_lblAddNewStudy" style="font-family:SimHei">统计学生信息</span>
                    </header>
                    <div class="list-group">
                        <a target='_blank' href="printpay" id="ctl00_ContentPlaceHolder1_lnkAddNewStudy" class="list-group-item"><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;统计学生参与情况</a>
                    </div>
                </section>

                <section class="panel">
                    <header class="panel-heading">
                        <span id="ctl00_ContentPlaceHolder1_lblMyProfile_Researcher" style="font-family:SimHei">个人信息</span>
                    </header>
                    <div class="list-group">
                        <a target='_blank' href="ListTeachersInfo" id="ctl00_ContentPlaceHolder1_lnkMyProfile1_Researcher" class="list-group-item"><span class="glyphicon glyphicon-lock"></span>&nbsp;&nbsp;查看、修改个人信息</a>
                       
                    </div>
                </section>
                
                
            </div>
            

            <div class="col-sm-6">
                    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$upcomingAppointmentsScriptManager', 'aspnetForm', ['tctl00$ContentPlaceHolder1$upcomingAppointmentsUpdatePanel',''], [], [], 90, 'ctl00');
//]]>
</script>
<div id="ctl00_ContentPlaceHolder1_upcomingAppointmentsUpdatePanel">
	
               

                
                   
</div>
                <section class="panel">
                    <header class="panel-heading">
                        近期实验
                    </header>
                    <div class="list-group">       
                        		<c:forEach items="${sessionScope.listresentexperiments}" var="listresentexperiments">
                                <a href="ListOneExperiments?id=${listresentexperiments.id}" id="ctl00_ContentPlaceHolder1_MostRecentStudiesRepeater_Researcher_ctl00_lnkStudy" class="list-group-item">
                                   ${listresentexperiments.name}<span class="badge pull-right bg-primary">${listresentexperiments.createtime}</span>                                
                                </a>
                            
                              
                            </c:forEach>
                    </div>
                </section>
            </div>
        </div>
    
    
    
	
    


                    <!-- page end-->

                </section>
            </section>
                
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    <address>
                          <span id="ctl00_TextPageFooterLabel">Email questions to</span> <a id="ctl00_MailToHyperLink" href="mailto:tomking15@qq.com">tomking15@qq.com</a><br/>
                        Copyright &copy; <span id="ctl00_YearLabel">2017</span>&nbsp;<a href="http://sm.xmu.edu.cn/" target="_blank">SM.XMU.Edu</a>
                    </address>
                </div>
            </footer>
            <!--footer end-->
        </section>
    </div>
    </form>

    <!-- js placed at the end of the document so the pages load faster -->
    
    <!-- Get Boostrap from the Microsoft CDN and fallback to the local copy, if not available -->
    <script src="//ajax.aspnetcdn.com/ajax/bootstrap/3.1.1/bootstrap.min.js"></script>
    <script>$.fn.modal || document.write('<script src="js/bootstrap.3.1.1.min.js">\x3C/script>')</script>
    
    <script src="assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js"></script>
    
    <script src="assets/bootstrap-datepicker/Scripts/bootstrap-datepicker.js"></script>
    <!-- Localized values for the bootstrap-datepicker -->
    

    <script src="assets/jquery-multi-select/js/jquery.multi-select-0.9.11.min.js"></script>
    <script src="assets/jquery-knob/js/jquery.knob.1.2.8.min.js"></script>
    <script type="text/javascript" src="js/typeahead.bundle-0.10.2.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.pulsate.min.js"></script>


    
        <script type="text/javascript" >
            // Create a Sona namespace, if it does not exist
            window.Sona = window.Sona || {};

            (function(Sona) {
                var sessionLengthInMinutes = 20;
                var warnBeforeTimeInMinutes = 3;
                var warningDelayInMilliseconds = (sessionLengthInMinutes-warnBeforeTimeInMinutes) * 60 * 1000;
                var expirationTime = new Date().getTime() + (sessionLengthInMinutes*60000);
                var countdownTimeoutID;  
                
                Sona.renew = function () {
                    $.ajax(
                    {
                        type: "POST",
                        url: "AjaxMethods.asmx/RenewSession",
                        success: function() {
                            window.clearTimeout(countdownTimeoutID);
                            expirationTime = new Date().getTime() + (sessionLengthInMinutes*60000);
                            setTimeout(showTimeoutWarning, warningDelayInMilliseconds);
                        }
                    });
                };
             
                var showSecondsAsMinutesAndSeconds = function(seconds) {
                    var minutes = Math.floor(seconds / 60);
                    var remainderSeconds = (seconds % 60);
                    if (remainderSeconds < 10) {
                        remainderSeconds = "0" + remainderSeconds;
                    }
                    return minutes + ":" + remainderSeconds;
                };

                var countdownTick = function() {
                    var currentTimeInMilliseconds = new Date().getTime();
                    var timeRemaining = Math.floor((expirationTime - currentTimeInMilliseconds) / 1000);
                    if (timeRemaining >= 0) {
                    
                        
                        if (typeof this.$clock === 'undefined') {
                            this.$clock = $('#time_remaining');
                        }
                        if (this.$clock.length > 0) {
                            this.$clock.html(showSecondsAsMinutesAndSeconds(timeRemaining));
                        }
                        countdownTimeoutID = setTimeout(countdownTick, 1000);
                    } else {
                        window.location.replace('default.aspx?logout=Y');
                    }
                };
                
                var showTimeoutWarning = function() {
                    $('#timeoutModal').modal();
                    countdownTick();
                };

                
                Sona.showTimeoutWarning = showTimeoutWarning;

                setTimeout(showTimeoutWarning, warningDelayInMilliseconds);
            })(window.Sona);
        </script>
       

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    
    <!--script for this page-->
    <script src='js/page/main.aspx.js'></script>
    
<!-- Modal -->
<div class="modal fade" id="timeoutModal" tabindex="-1" role="dialog" aria-labelledby="timeoutModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="timeoutModalLabel">Automatic Logout</h4>
      </div>
      <div class="modal-body">
          <p id="timeout_text">You are about to be automatically logged out due to inactivity in <span id='time_remaining'></span>. 
    To avoid losing any unsaved changes, please select continue session.<br><br>
    If you are finished with your session, simply log out.</p>
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="Sona.renew();">Continue Session</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="window.location.replace('default.aspx?logout=Y');">Log Out</button>
      </div>
    </div>
  </div>
</div>

</body>
<script type="text/javascript">
 $(document).ready(function(){
	 $("#l1").css('font-color','white');
 })
 </script>
</html>