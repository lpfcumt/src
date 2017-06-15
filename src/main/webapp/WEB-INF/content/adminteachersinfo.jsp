<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>
	教师信息
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
        <link href="css/task.css" rel="stylesheet" />

        
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
	<li><a href="adminmain"><span class="glyphicon glyphicon-home"></span>&nbsp;主页</a></li>
	<li ><a href="ListAllExperiments4">所有实验</a></li>
	<li  class="active"><a href="Adminteachersinfo"><span style="color:white;">教师信息</span></a></li>
	<li><a href="Adminstudentsinfo">学生信息</a></li>
	<li><a href="return_Exitmain">退出登录&nbsp;<span class="glyphicon glyphicon-log-out"></span></a></li>
</ul>

</div>

 </div>   <c:if test="${sessionScope.admins_name!=null}">
                            <div id="ctl00_UserInfoSection" class="col-lg-12">
                                <p class="user pull-right">
                                    <span id="loginname">${sessionScope.admins_name}</span>&nbsp;(<span>Admin</span>)
                                </p>
                            </div>
							</c:if>
							<c:if test="${sessionScope.admins_name==null}">
                            <div id="ctl00_UserInfoSection" class="col-lg-12">
                                <p class="user pull-right">
                                    <span id="loginname">请点击<a href="login">登录</a>！</span>
                                </p>
                            </div>
							</c:if>

                    </div>

                    <!-- START NOTIFICATIONS -->            
<div class="row">
		<div class="col-lg-12">
		<section class="panel">
		     <ul class="nav nav-tabs" role="tablist" id="myTab">
                <li role="presentation" class="active"><a href="#all" role="tab" data-toggle="tab" >所有老师</a></li>
                <li role="presentation" ><a href="#all1" role="tab" data-toggle="tab" >添加老师</a></li>
            </ul>
            <br> 

            <br>
            <div class="tab-content">
                <!--下面的三个Table分别对应ALL、Active、Inactive三个不同的按钮，非重复、不可删除 -->
                <div role="tabpanel" class="tab-pane active" id="all">
                    <table class="table table-hover table-striped table-bordered" id="table1">
				        <thead>
					       <tr>
						      <th>
							     教师姓名
						      </th>
                              <th>
							     学工号
						      </th>
						      <th>
							     查看
						      </th>
					       </tr>
				        </thead>
				        <c:forEach items="${sessionScope.listAllTeachers}" var="listAllTeachers1">
				        <tbody>
					       <tr>
						      <td>
							     <a target="_blank" href="Admins1TeachersInfo?id=${listAllTeachers1.id}" >${listAllTeachers1.name}</a>
						      </td>
                               <td>
                                 <a target="_blank" href="Admins1TeachersInfo?id=${listAllTeachers1.id}" >${listAllTeachers1.teachers1_id}</a>
						      </td>
						      <td>
							     <a target="_blank" href="Admins1TeachersInfo?id=${listAllTeachers1.id}" >教师信息</a><br>          
						      </td>
					       </tr>
				        </tbody>
				        </c:forEach>
			         </table>
                </div>
                <div role="tabpanel" class="tab-pane " id="all1">
            <form id="defaultForm" name="aspnetForm" method="post" action="AddTeachers">
             <section class="panel">
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
								<input type="text" name="name"  id=""  class="form-control form-control-inline" placeholder="您的姓名" />
							    </div>
                            </div>
						
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>性别</label>
							</div>

							<div class="row">&nbsp;</div>

							<div class="form-inline col-md-6">
						        <div class="form-group">
								    <label><input type="radio" name="sex"  id="" value="男" class="form-control form-control-inline" /> 男</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label><input type="radio" name="sex"  id="" value="女" class="form-control form-control-inline" /> 女</label>
							    </div>
                            </div>
						
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>学工号</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="teachers1_id"  id="" class="form-control form-control-inline" placeholder="您的学号" />
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
								<input type="password" name="password"  id="" class="form-control form-control-inline" placeholder="输入密码" />
							    </div>
							</div>
					</div>
                    <div class="row">
                        <div class="control-label col-md-2">
								<label>确认密码</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="password" name="repassword"  id="" class="form-control form-control-inline" placeholder="请再次输入密码" />
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
								<input type="text" name="school"  id="" class="form-control form-control-inline" placeholder="您的学院" />
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
								<input type="text" name="tel" maxlength="11" id="" class="form-control form-control-inline" placeholder="您的电话" />
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
								<input name="email" type="email"  maxlength="30" id="" class="form-control form-control-inline" placeholder="您的邮箱" />
                                </div>
							</div>
			
					</div>

					<div class="row">
						<div class="form-group">
							<div class="control-label col-md-12">
								<br><br><input type="submit" name="" value="添加" onclick="disp_alert()" id="" class="btn btn-info btn-lg" />
							</div>
						</div>
					</div>
                </div>

            </section>

          
            </form>
                </div>
                
               </div>
               </section>
		</div>
	</div>




                    <!-- END NOTIFICATIONS -->
                    

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
    <script src="//ajax.aspnetcdn.com/ajax/bootstrap/3.1.1/bootstrap.min.js"></script>
    <script>$.fn.modal || document.write('<script src="js/bootstrap.3.1.1.min.js">\x3C/script>')</script>
    
    <script src="assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js"></script>
    
    <script src="assets/bootstrap-datepicker/Scripts/bootstrap-datepicker.js"></script>
    <!-- Localized values for the bootstrap-datepicker -->
    

    <script src="assets/jquery-multi-select/js/jquery.multi-select-0.9.11.min.js"></script>
    <script src="assets/jquery-knob/js/jquery.knob.1.2.8.min.js"></script>
    <script type="text/javascript" src="js/typeahead.bundle-0.10.2.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.pulsate.min.js"></script>


    
      

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
  <script type="text/javascript">
function disp_alert()
{
alert("你好！尊敬的管理员，短信已经发给您添加的老师")
}
</script>
   
      <script type="text/javascript" src="vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script> 
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
		                    	alertmessage: '请正确输入邮箱'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                    	alertmessage: '邮箱不能为空'
		                    },
		                    regexp: {
		                        enabled: true,
		                        regexp: /^([\w]+)(.[\w]+)*@([\w-]+\.){1,5}com$/,
		                        alertmessage: '您的邮箱格式错误，请重新输入'
		                    }
		                }
		            },
                    tel: {
		                validators: {
		                    stringLength: {
                                min: 11,
                                max: 11,
		                        message: '请正确输入手机号，为十一位'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '手机号不能为空'
		                    },
		                    regexp: {
		                        enabled: true,
		                        regexp: /^[0-9]+$/i,
		                        message: '请正确输入手机号'
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
		                    regexp: {
		                        enabled: true,
		                        regexp: /^[a-z,0-9]+$/i,
		                        message: '密码为数字与字母的组合'
		                    }
		                }
		            },
                     repassword: {
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
		            teachers1_id: {
		                validators: {
		                    stringLength: {
                                min:8,
                                max:16,
		                        message: '学工号为8位数字'
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
		                        message: '请输入名字'
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