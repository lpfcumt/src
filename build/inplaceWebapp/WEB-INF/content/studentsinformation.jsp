﻿<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>
	学生个人信息
</title><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Cache-Control" content="no-cache" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="shortcut icon" href="favicon.ico" />
        <!-- Bootstrap core CSS -->
        <link rel="shortcut icon" href="custom/favicon.ico"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        
        <link href="css/bootstrap-reset.css" rel="stylesheet" />
        <link href="css/typeaheadjs.css" rel="stylesheet" />
        <link href="assets/bootstrap-accessibility-plugin/css/bootstrap-accessibility.css" rel="stylesheet" />

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
        <link href="print.css" type="text/css" media="print" rel="stylesheet" />

    <script type="text/javascript" src="vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/Ajax.js"></script>
    <script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script>        
        
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
	            color:#5CACEE  !important; /* EMS_UI_PRIMARY_COLOR */
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
<ul class="nav navbar-default nav-pills nav-justified" style="font-size:16px;">
	<li  ><a href="ListStudentsResent"><span class="glyphicon glyphicon-home"></span>&nbsp;主页</a></li>
	<li><a href="ListJOinExperiments">我的实验</a></li>
	<li><a href="ListactiveExperiments3">有效实验</a></li>
	<li class="active"><a href="ListStudentsInfo" target="_blank"><span style="color:white;">个人信息</span></a></li>
	<li><a href="return_Exitmain">退出登录&nbsp;<span class="glyphicon glyphicon-log-out"></span></a></li>
</ul>

</div>

 </div> 	<c:if test="${sessionScope.students_name!=null}">
                            <div id="ctl00_UserInfoSection" class="col-lg-12">
                                <p class="user pull-right">
                                    <span id="loginname">${sessionScope.students_name}</span>&nbsp;(<span>User</span>)
                                </p>
                            </div>
							</c:if>
							<c:if test="${sessionScope.students_name==null}">
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
        <div class="col-md-12">
            <form id="defaultForm" name="aspnetForm" method="post" action="./lost_password.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="aspnetForm">
            <section class="panel">

                <header class="panel-heading">
                    <span id="ctl00_ContentPlaceHolder1_lblTableTitle" style="font-family:SimHei;font-size:20px">学生个人信息</span>
                </header>
				<c:forEach items="${sessionScope.listStudentsById}" var="listStudentsById">
                <div class="panel-body">
                    
					<div class="row">&nbsp;</div>
                    <div class="row">&nbsp;</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>姓名</label>
							</div>

							<div class="row">&nbsp;</div>

							<div class="control-label col-md-6">
						        <div class="form-group">
								<input type="text" name="name" value="${listStudentsById.name}" id="" class="form-control form-control-inline" placeholder="" disabled />
							    </div>
                            </div>
						
					</div>
                   <div class="row">
                        <div class="control-label col-md-2">
								<label>性别</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="id" value="${listStudentsById.sex}" id="" class="form-control form-control-inline" placeholder="" disabled/>
							    </div>
							</div>
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>学号</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="id" value="${listStudentsById.students_id}" id="" class="form-control form-control-inline" placeholder="" disabled/>
							    </div>
							</div>
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>密码</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="password" name="password" value="${listStudentsById.password}" id="" class="form-control form-control-inline" placeholder="" disabled/>
							    </div>
							</div>
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>年级</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="grade" value="${listStudentsById.grade}" id="" class="form-control form-control-inline" placeholder="" disabled />
							    </div>
							</div>
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>专业</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="major" value="${listStudentsById.major}" id="" class="form-control form-control-inline" placeholder="" disabled/>
							    </div>
							</div>
					</div>
                     <div class="row">
                        <div class="control-label col-md-2">
								<label>学院</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="school" value="${listStudentsById.school}" id="" class="form-control form-control-inline" placeholder="" disabled />
							    </div>
							</div>
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>电话</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="tel" value="${listStudentsById.tel}" maxlength="11" id="" class="form-control form-control-inline" placeholder="" disabled />
							    </div>
							</div>
					</div>                                       
					<div class="row">
							<div class="control-label col-md-2">
								<label>邮箱</label>
							</div>

							<div class="row">&nbsp;</div>

							<div class="control-label col-md-6">
                                <div class="form-group">
								<input name="email" type="email" value="${listStudentsById.email}" maxlength="30" id="" class="form-control form-control-inline" placeholder="" disabled />
                                </div>
							</div>
			
					</div>
                </div>
				</c:forEach>
            </section>

          
            </form>
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

    <!-- js placed at the end of the document so the pages load faster -->
    
    <!-- Get Boostrap from the Microsoft CDN and fallback to the local copy, if not available -->
    <script src="js/bootstrap.min.js "></script> 
    <script src="assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js"></script>
    <script src="assets/bootstrap-datepicker/Scripts/bootstrap-datepicker.js"></script>
    <!-- Localized values for the bootstrap-datepicker -->
    

    <script src="assets/jquery-multi-select/js/jquery.multi-select-0.9.11.min.js"></script>
    <script src="assets/jquery-knob/js/jquery.knob.1.2.8.min.js"></script>
    <script type="text/javascript" src="js/typeahead.bundle-0.10.2.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.pulsate.min.js"></script>
    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    
    <!--script for this page-->
     <script type="text/javascript">
		$(document).ready(function() {
		    $('#defaultForm').formValidation({
		        err: {
		            container: 'tooltip'
		        },
		//        trigger: 'blur',
		        icon: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
		            email: {
		                validators: {
		                    stringLength: {
		                        message: '请正确输入邮箱'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '邮箱不能为空'
		                    },
		                    regexp: {
		                        enabled: true,
		                        regexp: /[\w-]+@{1}[\w-]+\.{1}\w{2,4}(\.{0,1}\w{2}){0,1}/ig,
		                        message: '请正确输入邮箱'
		                    }
		                }
		            },
                    tel: {
		                validators: {
		                    stringLength: {
                                min: 11,
		                        message: '请正确输入电话'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '电话不能为空'
		                    },
		                    regexp: {
		                        enabled: true,
		                        regexp: /^[0-9]+$/i,
		                        message: '请正确输入电话'
		                    }
		                }
		            }, 
                     school: {
		                validators: {
		                    stringLength: {
		                        message: '学院'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '学院不能为空'
		                    },
		                }
		            },
                      major: {
		                validators: {
		                    stringLength: {
		                        message: '专业'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '专业不能为空'
		                    },
		                }
		            },
                    grade: {
		                validators: {
		                    stringLength: {
		                        message: '年级'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '年级不能为空'
		                    },
		                }
		            }, 
                    password: {
		                validators: {
		                    stringLength: {
                                min:6,
		                        message: '密码至少为6位'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '密码不能为空'
		                    },
                            identical:{
                                field:'password',
                                message:'两次输入密码不一致'
                            },
		                    regexp: {
		                        enabled: true,
		                        regexp: /^[a-z,0-9]+$/i,
		                        message: '密码为数字与字母的组合'
		                    }
		                }
		            },                
                    id: {
		                validators: {
		                    stringLength: {
                                min:8,
		                        message: '学工号至少为8位数字'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '学工号不能为空'
		                    },
		                    regexp: {
		                        enabled: true,
		                        regexp: /^[0-9]+$/i,
		                        message: '请正确输入学工号'
		                    }
		                }
		            },
                    name: {
		                validators: {
		                    stringLength: {
		                        message: '请正确输入邮箱'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '姓名不能为空'
		                    },

		                }
		            },
		        }
		    });
		});
	</script>
</body>
</html>