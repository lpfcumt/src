<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>
	创建实验
</title><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Cache-Control" content="no-cache" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="shortcut icon" href="favicon.ico" />
        <!-- Bootstrap core CSS -->
        
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
        <link href="blue/doubleDate.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
       <script type="text/javascript" src="js/doubleDate2.0.js"></script>
      <script type="text/javascript">

</script>
 

        
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
    <script type="text/javascript" src="js/Ajax.js"></script>    
    <script type="text/javascript" src="vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script>
    <script src="assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js"></script>
    <script src="assets/jquery-multi-select/js/jquery.multi-select-0.9.11.min.js"></script>
    <script src="assets/jquery-knob/js/jquery.knob.1.2.8.min.js"></script>
    <script type="text/javascript" src="js/typeahead.bundle-0.10.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.pulsate.min.js"></script>
    <script src="js/common-scripts.js"></script>
    <script type="text/javascript" src="jedate/jedate.js"></script>
     <link rel="stylesheet" href="dist/css/bootstrapValidator.css"/> 
   <style>
   *{margin:0;padding:0;list-style-type:none;}
  a,img{border:0;}
 body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}


 .iptgroup{width:620px;height:60px;margin:20px auto 0 auto;}
 .iptgroup li{float:left;height:30px;line-height:30px;padding:5px;}
 .iptgroup li .ipticon{background:url(blue/date_icon.gif) 98% 50% no-repeat;border:1px #CFCFCF solid;padding:3px;}
  
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
	            color:##5CACEE !important; /* EMS_UI_PRIMARY_COLOR */
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
	<li ><a href="ListResentExperiments"><span class="glyphicon glyphicon-home"></span>&nbsp;主页</a></li>
	<li><a href="ListTeacherExperiments">我的实验</a></li>
	<li><a href="ListAllExperiments2">所有实验</a></li>
	<li class="active"><a href="addexperimentcate"><span style="color:white;">创建实验</span></a></li>
	<li><a href="ListTeachersInfo">个人信息</a></li>
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

 <div class="row">
		  <div class="col-md-12">
      <div class="panel">
            <div>
            <br>
                 <p style="font-size:17px;">&nbsp;&nbsp;&nbsp;&nbsp;第一步：填写基本信息</p>
                <hr class="hrhr" />
                <p style="font-size:14px;font-family:微软雅黑;">&emsp;&emsp;&emsp;&emsp;<small>此步骤您需要指定实验的一些基本信息，诸如实验名称、时间、地点等。</small></b>
                        <hr class="hrhr"/>
            </div>
			<form class="form-horizontal"  id="defaultForm" action="Add1Experiments" method="post">
                <div class="form-group">
                     <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">实验名称</p></label>
                     <div class="col-sm-6">
                           <input type="text" name="name" class="form-control" id="inputPassword3" placeholder="XX实验" maxlength="100" required="required" />
                          
                     </div>
                </div>
                <hr class="hrhr">
                <div class="form-group">
                     <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">实验类型</p></label>
                     <div class="col-sm-6">
                     		<c:if test="${sessionScope.experiments_cate=='现场学分实验'}">
                           <input type="text" name="cate" class="form-control" id="inputPassword3" value="现场学分实验" disabled><br>
                           </c:if>
                           <c:if test="${sessionScope.experiments_cate=='现场现金实验'}">
                           <input type="text" name="cate" class="form-control" id="inputPassword3" value="现场现金实验" disabled><br>
                           </c:if>
                           <c:if test="${sessionScope.experiments_cate=='在线实验'}">
                           <input type="text" name="cate" class="form-control" id="inputPassword3" value="在线实验" disabled><br>
                           </c:if>
                     </div>
                </div>
                <hr class="hrhr">                
                <div class="form-group">
                     <label for="inputPassword3"class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">摘要</p></label>
                     <div class="col-sm-6">
                           <textarea name="outline" class="form-control" rows="6" maxlength="1000"></textarea>
                     </div>
                </div>
                <hr class="hrhr">                
                <div class="form-group">
                     <label for="inputPassword3"class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">详细内容<br><i>(最多255个字符，可选)</i></p></label>
                     <div class="col-sm-6">
                           <textarea name="detail" class="form-control" rows="12" maxlength="1000"></textarea>
                     </div>
                </div>
                <hr class="hrhr">
                <c:if test="${sessionScope.experiments_cate=='现场学分实验'}">   
                <div class="form-group">
                     <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">支付学分<br></p></label>
                     <div class="col-sm-6">
                           <input type="text" name="credit" class="form-control" id="inputPassword3" placeholder="1"  onblur="this.v();" required="required"/><br>
                     </div>
                </div>
                </c:if>
                <c:if test="${sessionScope.experiments_cate=='现场现金实验'}">   
                <div class="form-group">
                     <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">支付金额<br></p></label>
                     <div class="col-sm-6">
                           <input type="text" name="pay" class="form-control" id="inputPassword3" placeholder="1"  required="required"/><br>
                     </div>
                </div>
                </c:if>
                 <c:if test="${sessionScope.experiments_cate=='在线实验'}">   
                
                </c:if>
                <hr class="hrhr">  
                <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">学习链接</p></label>
                        <div class="col-sm-6">
                            <input type="text" name="url" class="form-control" id="inputPassword3" placeholder="https://www.baidu.com/" required="required">
                        </div>
                    </div>
                <hr class="hrhr">  
                <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">开始时间</p></label>
                        <div class="col-sm-6">
                            
                            
					            <div class='input-group date' id='datetimepicker8'>
					                <input type='text' class="form-control datainp" name="starttime"  placeholder="格式为：2017-02-18"  id="datebut"   onClick="jeDate({dateCell:'#datebut',isTime:true,format:'YYYY-MM-DD hh:mm:ss'})"/><br>
					                
					               
					            </div>
 
                        </div>
                    </div>
                    <hr class="hrhr" />
                    <div class="form-group">       
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">结束时间</p></label>
                        <div class="col-sm-6">
                        	<div class='input-group date' id='datetimepicker8'>
					                <input type='text' class="form-control datainp" name="endtime"  placeholder="格式为：2017-02-18"  id="datebut1"  onClick="jeDate({dateCell:'#datebut1',isTime:true,format:'YYYY-MM-DD hh:mm:ss'})"/>
					                
					            </div>
                            
                        </div>
              </div>
                    <hr class="hrhr" />
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">地点</p></label>
                        <div class="col-sm-6">
                            <input type="text" name="field" class="form-control" id="inputPassword3" placeholder="例如：管理学院" required="required"/><br>
                        </div>
                    </div>
                    <hr class="hrhr" />
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:center"><p style="font-size:16px;">负责人</p></label>
                        <div class="col-sm-6">
                            <input type="text" name="principals" class="form-control"  id="inputPassword3"  required="required"  /><br>
                        </div>
                    </div>
                <hr class="hrhr">
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="btn btn-primary " value="继续">继续<span class="glyphicon glyphicon-chevron-right"></span></button>
                    </div>
                </div>
            </form>
		</div>
	</div>
</div> 
    <script src="js/scripts.js"></script>                   

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

    <!--script for this page-->
    <script src='js/page/main.aspx.js'></script>
     
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
		            name: {
		                validators: {
		                    stringLength: {
		                    	message: '请输入实验名字'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                    	message: '实验名字不能为空'
		                    }
		                }
		            },
                     outline: {
		                validators: {
		                    stringLength: {
			                    min:10,
		                        message: '请填写摘要,不少于10字'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '摘要不能为空'
		                    },
		                }
		            },
                      detail: {
		                validators: {
		                    stringLength: {
		                    	min:15,
		                        message: '请填写实验详情，不少于15字'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '实验详情不能为空'
		                    },
		                }
		            },
                  
                    url: {
		                validators: {
		                    stringLength: {
		                        message: '请填写实验链接'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '实验链接不能为空'
		                    },
		                    regexp: {
		                        enabled: true,
		                        regexp: '^(((ht|f)tp(s?))\://)?(www.|[a-zA-Z].)[a-zA-Z0-9\-\.]+\.(com|edu|gov|mil|net|org|biz|info|name|museum|us|ca|uk)(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$',
		                        message: '请输入正确的实验链接格式'
		                    }
		                }
		            },
                    
                    field: {
		                validators: {
		                    stringLength: {
		                        message: '请输入实验地点'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '实验地点不能为空'
		                    },

		                }
		            },
		            principals: {
		                validators: {
		                    stringLength: {
		                        message: '请输入负责人的名字'
								/* 根据实际情况设置 */
		                    },
		                    notEmpty: {
		                        message: '负责人姓名不能为空'
		                    },

		                }
		            },
		        }
		    });
		});
	</script>


</body>
</html>