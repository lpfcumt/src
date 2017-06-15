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
    
      <script src="assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js"></script>
    <script src="assets/jquery-multi-select/js/jquery.multi-select-0.9.11.min.js"></script>
    <script src="assets/jquery-knob/js/jquery.knob.1.2.8.min.js"></script>
    <script type="text/javascript" src="js/typeahead.bundle-0.10.2.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.pulsate.min.js"></script>
    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>  
     <link rel="stylesheet" href="dist/css/bootstrapValidator.css"/>  
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
            <form id="defaultForm" name="aspnetForm" method="post" action="addstudent">
            <section class="panel">

                <header class="panel-heading">
                    <span id="ctl00_ContentPlaceHolder1_lblTableTitle"><b>学生注册</b></span>
                </header>

                <div class="panel-body ">
                   <div >
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
								    <label><input type="radio" name="sex"  id="" value="男" class="form-control form-control-inline" /> 男</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label><input type="radio" name="sex"  id="" value="女" class="form-control form-control-inline" /> 女</label>
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
								<input type="text" name="students_id"  id="students_id" class="form-control form-control-inline" placeholder="您的学号" onblur="checkId(this)" />
					           <font id="usertrueInfo" style="float:right;"></font>
							    
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
								<input name="email" type="email" style="float:left" maxlength="30" id="email" class="form-control form-control-inline" placeholder="您的邮箱" /><font style="float:right" id="emailtrueInfo" ></font>
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
								<label>年级</label>
						</div>

							<div class="row">&nbsp;</div>
							<div class="control-label col-md-6">
								<div class="form-group">
								<input type="text" name="grade"  id="" class="form-control form-control-inline" placeholder="您所在的年级，如“2014级”" />
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
								<input type="text" name="major"  id="" class="form-control form-control-inline" placeholder="您的专业，如“电子商务”" />
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
					

					<div class="row col-sm-offset-5 col-sm-7">
						<div class="form-group">
							<div class="control-label col-md-12">
								<br><br><input type="submit" disabled="disabled" name="" value="注册" onclick="disp_alert()" id="btn1" class="btn btn-info btn-lg" />
							</div>
						</div>
					</div>
                </div>
			</div> 
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

</script>
   
    
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
		                        regexp: /^([\w]+)(.[\w]+)*@([\w-]+\.){1,5}com$/,
		                        message: '您的邮箱格式错误，请重新输入'
		                    }
		                }
		            },
                    tel: {
		                validators: {
		                    stringLength: {
                                min: 11,
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
                    students_id: {
		                validators: {
		                    stringLength: {
                                min:14,
                                max:14,
		                        message: '学工号至少为14位数字'
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
		function checkId(students_id) {
			var students_id=$("#students_id").val();
			$.ajax({
				   url:'Check_Check_StudentsId',// 跳转到 action  
				   data:{  
					   students_id : students_id 
				    }, 
				    type:'post',  
				    cache:false,  
				    dataType:'json',  
				    success:function(data) { 
				    	console.log(data);
				    	if(data.flag==false){
				    		$("#usertrueInfo").html("用户名已存在，请重新输入！");
				    		$("#usertrueInfo").css('color','red');
							$("#id").focus();
							$("#btn1").attr('disabled',true)
				    		 return false;
				    	}
				    	else{
				    		$("#usertrueInfo").html("该学号可以注册");
				    		$("#usertrueInfo").css('color','green');
				    		$("#btn1").attr('disabled',false)
					    	return true;
					    	}
				     }
				   
			});
			}

		$("#email").change(function(){
			var students_email=$("#email").val();
			$.ajax({
				   url:'Check_Check_StudentsEmail',// 跳转到 action  
				   data:{  
					   email : students_email 
				    }, 
				    type:'post',  
				    cache:false,  
				    dataType:'json',  
				    success:function(data) { 
				    	console.log(data);
				    	if(data.flag==false){
				    		$("#emailtrueInfo").html("邮箱已存在，请重新输入！");
				    		$("#emailtrueInfo").css('color','red');
							$("#email").focus();
							$("#btn1").attr('disabled',true)
				    		 return false;
				    	}
				    	else{
				    		$("#emailtrueInfo").html("该邮箱可用");
				    		$("#emailtrueInfo").css('color','green');
				    		$("#btn1").attr('disabled',false)
					    	return true;
					    	}
				     }
				   
			});
			});
		
		 function disp_alert()
		    {
		    alert("你好！亲爱的同学， 请等待邮箱通知是否注册成功,如果2-3个工作日内未收到邮件，请查看垃圾邮箱，或者联系管理员。")
		    }
	</script>
</body>
</html>