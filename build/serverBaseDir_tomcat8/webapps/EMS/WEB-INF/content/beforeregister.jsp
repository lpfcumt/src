<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head><title>
	学生注册
</title><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Cache-Control" content="no-cache" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="shortcut icon" href="favicon.ico" />
        <!-- Bootstrap core CSS -->
        
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link rel="shortcut icon" href="custom/favicon.ico"/>
        <link href="css/bootstrap-reset.css" rel="stylesheet" />
        <link href="css/typeaheadjs.css" rel="stylesheet" />
        <link href="assets/bootstrap-accessibility-plugin/css/bootstrap-accessibility.css" rel="stylesheet" />

        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/jquery-multi-select/css/multi-select.css" rel="stylesheet" />
        
    
        <!-- Custom styles for this template -->
        
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/style-responsive.css" rel="stylesheet" />
        
        <link href="css/open-sans-font.css" rel="stylesheet" />
        <link href="css/custom.css" rel="stylesheet" />
        <link href="css/task.css" rel="stylesheet" />
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
  
   
    <script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script>        
   
   
 
    <!-- Localized values for the bootstrap-datepicker -->
    


    <!--common script for all pages-->

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
	            color:#4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
            }

            a {
	            color:#4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
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
                background-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
                border-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
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
                background:#4E2C7E;  /* EMS_UI_PRIMARY_COLOR */
                border-radius: 5px;
                margin: -10px -15px -11px;
            }

            .panel-heading .nav > li.active > a {
	            color: #4E2C7E !important;  /* EMS_UI_PRIMARY_COLOR */
            }

            .panel-heading .nav > li.active > a, .panel-heading .nav > li > a:hover {
	            color: #2D194B !important;  /* EMS_UI_SECONDARY_COLOR */
            }

            .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active a {
	            background: #f8f7f5 !important;
	            border-left: 5px solid #4E2C7E;   /* EMS_UI_PRIMARY_COLOR */
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
	            background:#4E2C7E; /* EMS_UI_PRIMARY_COLOR */
                border-radius: 5px 5px 0 0;
                -webkit-border-radius: 5px 5px 0 0;
                color: #fff;
                font-size: 18px;
                text-transform: uppercase;
                font-weight: 300;
                font-family: 'Open Sans', sans-serif; /* Open Sans for all, Font Style - Set by Google */
            }

            .task-thumb-details h1, .task-thumb-details h1 a, .task-progress h1, .task-progress h1 a {
                color: #4E2C7E; /* EMS_UI_PRIMARY_COLOR */
                font-size: 18px;
                margin: 0;
                padding: 0;
                font-weight: 400;
            }

            .btn-primary {
	            background-color:#4E2C7E; /* EMS_UI_PRIMARY_COLOR */
                border-color: #4E2C7E; /* EMS_UI_PRIMARY_COLOR */
	            color:#FFFFFF; /* EMS_UI_HEADLINE_COLOR */
            }

            .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open .dropdown-toggle.btn-primary {
                background-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */
                border-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */
                color: #fff !important;
            }

            .activity.red span {
                background: #2D194B; /* EMS_UI_SECONDARY_COLOR */
            }

            .ms-container .ms-selectable li.ms-hover, .ms-container .ms-selection li.ms-hover {
                background-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
                color: #FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */
                cursor: pointer;
                text-decoration: none;
            }

            ::selection {
                background: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
                color: #fff;
            }


            ::-moz-selection {
                background: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
                color: #fff;
            }

            .bio-desk h4.title2 {
            color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
            }

            .label-primary {
	            background-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
            }

            .badge.bg-primary {
            background: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
            }
        
            .text-center a {
	            color:#FFFFFF !important;   /* EMS_UI_HEADLINE_COLOR */
	            text-decoration: underline;
            }

            .modal-header {
                background:#4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */
            }
        </style>
    
    
    <!-- Get jQuery from the Microsoft CDN and fallback to the local copy, if not available -->
  
	<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body class="boxed-page">
   
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

                        

                    </div>

                    <!-- START NOTIFICATIONS -->
                    
                    <!-- END NOTIFICATIONS -->
                    
                    <!-- page start-->
                    
    <div class="row">
        <div class="col-md-12">
          
            <section class="panel">

                <header class="panel-heading">
                    <span id="ctl00_ContentPlaceHolder1_lblTableTitle"><b></b></span>
                </header>

                <div class="panel-body">

              <div style="font-size:14px" class="view" contenteditable="true"><h5 align="center"><strong>常见问题</strong></h5>

						<ul>
							<li align="left"><strong>如何注册用户？</strong></li>
							<span style="font-size:13px">&emsp;&emsp;<a href="http://mrs.xmu.edu.cn/">http://mrs.xmu.edu.cn/</a>界面，点击“学生注册”按钮。</span>
						</ul>
						
						<ul>
							<li><strong>如何知道是否成功注册账户？</strong></li>
							<p style="font-size:13px">
								&emsp;&emsp;进入市场学系实验管理系统后，点击“学生注册”按钮。完成学生注册程序后，界面中会显示相应的对话框（来自网页的消息）：“你好！亲爱的同学，请等待邮箱通知是否注册成功”，随<br>&emsp;&emsp;后请点击该对话框中“确定”按钮。
								在2-3个工作日内系统管理员会通过验证，并激活您的账户。此时，您在注册信息时填写邮箱内，将收到一封来自xmuscxxems@vip.sina.com邮箱的确<br>&emsp;&emsp;认邮件。<strong>请注意：可以点击“立即登录”超链接！！！
								</strong>进入系统界面<a href="http://mrs.xmu.edu.cn/">http://mrs.xmu.edu.cn/</a>中进入，切记！在网页界面中输入相应的账户和密码即可进入系统中完成相应操作。
								<strong>3个工<br>&emsp;&emsp;作日后仍未收到邮件，请先从垃圾邮件中寻找，如果找到邮件，请设置mrs.xmu@xmu.edu.cn为非垃圾邮件，以免以后无法正常接收实验发布信息。如果仍未收到激活邮件，<br>&emsp;&emsp;再与管理员联系:mrs.xmu@gmail.com。</strong>
								
								<strong>如何知道是否有新实验发布？</strong></li>
								<a href="http://mrs.xmu.edu.cn/">http://mrs.xmu.edu.cn/</a>中进入，切记！</p>
						</ul>
						<ul>
							<li><strong>看到新实验发布后如何注册参加实验？</strong></li>
							
								<span style="font-size:13px">
								&emsp;&emsp;在网页界面中输入您的账户和密码即可进入系统中：<br>
								&emsp;&emsp;1、点击界面中“查看所有实验”，进入“所有实验”界面；<br>
								&emsp;&emsp;2、选择您想要参加的实验，然后点击“实验信息”按钮；<br>
								&emsp;&emsp;3、进入“实验信息”界面，查看本实验相关信息，点击界面最下方一行“参加”按钮。之后，界面中会跳出确认“参加实验”的对话框，请点击“确认参加”。</span>
						</ul>
						<ul>	
							<li><strong>可能出现的无法参加实验的情况有哪些？</strong></li>
							
								<span style="font-size:13px">&emsp;&emsp;在选择所要参与的实验时，首先确认实验状态是否为“已完成”，对于“已完成”的实验是无法继续参与的。
								若该实验的参与人数已经满足实验所需人数，也无法继续参与。系统会提示“对<br>&emsp;&emsp;不起，实验人数已满”。此时请返回“所有实验”界面，选择其他实验参与。</span>
							
						</ul>
						<ul>	
							<li><strong>如何得到学分或者现金奖励？</strong></li>
								<p style="font-size:13px">&emsp;&emsp;实验在发布之时，您就可在“实验信息”的“支付”中查看此实验的奖励方式。实验完成后将奖励学分或者现金。</p>
						</ul>
						
						
						
						</div>
						<br>
						<br>
						 <div class="col-sm-offset-5 col-sm-7">
                    	<button style="width:80px;" disabled="disabled" id="test" type="submit" class="btn btn-primary " value="继续">5</span></button>
                    	
                    </div>
                </div>
              </div>
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
                        Copyright &copy; <span id="ctl00_YearLabel">2017</span>&nbsp;<a href="http://sm.cumt.edu.cn" target="_blank">SM.CUMT.Edu</a>
                    </address>
                </div>
            </footer>
            <!--footer end-->
        </section>
    </div>

    <!-- js placed at the end of the document so the pages load faster -->
    
    <!-- Get Boostrap from the Microsoft CDN and fallback to the local copy, if not available -->
 
<script type="text/javascript">
window.onload =function() {
    var i = 4;
            setInterval(function(){               
            if(i == 0) {
            	document.getElementById("test").innerHTML = '下一步';
            	$("#test").attr('disabled',false);
                }
            else{
                document.getElementById("test").innerHTML = i--;
                
            }
            },1000);
        };
 $("#test").click(function(){
	 window.location='register';
 })
    </script>
	</script>
</body>
</html>