<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>
	实验信息
    </title>
    <meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Cache-Control" content="no-cache" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="shortcut icon" href="favicon.ico" />
        <!-- Bootstrap core CSS -->
       <link rel="shortcut icon" href="custom/favicon.ico"/>
        <!-- Bootstrap core CSS -->
        
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


    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="dist/css/bootstrapValidator.css"/>

    <script type="text/javascript" src="vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/Ajax.js"></script>
    <script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script> 
     <link href="btn/css/bootstrap-popover-x.css" media="all" rel="stylesheet" type="text/css" />
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
        <script src="btn/js/bootstrap-popover-x.js" type="text/javascript"></script>          
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
						<div style="border:#1C86EE;">
						    <!--navigation start-->
						
						        <!-- Brand and toggle get grouped for better mobile display -->
						<ul class="nav navbar-default nav-pills nav-justified" style="font-size:16px;">
							<li><a href="ListStudentsResent"><span class="glyphicon glyphicon-home"></span>&nbsp;主页</a></li>
							<li><a href="ListJOinExperiments">我的实验</a></li>
							<li><a href="ListactiveExperiments3">有效实验</a></li>
							<li><a href="ListStudentsInfo" target="_blank">个人信息</a></li>
							<li><a href="return_Exitmain">退出登录&nbsp;<span class="glyphicon glyphicon-log-out"></span></a></li>
						</ul>
						
						</div>
                            <c:if test="${sessionScope.students_name!=null}">
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

 <div class="row">
   
		<!-- Experiment Info Start -->
		<div class="col-sm-6">
			<section class="panel">
				<header class="panel-heading">
					实验信息
				</header>
				<div class="panel-body">
					<c:forEach items="${sessionScope.listoneexperiments1}" var="listoneexperiments1">	
					
					<input id="input1" type="hidden" value="${listoneexperiments1.id}"/>
					<table class="table col-sm-6 table-bordered table-striped">
						<tbody>
							<tr>
								<td class="strongbold" style="width:80px;">实验名称</td>
								<td>
									<h4><span><strong>${listoneexperiments1.name}</strong></span></h4>
									
								</td>
							</tr>
							
							<tr>
								<td class="strongbold">实验类型</td>
								<td>
									
									
									<c:if test="${listoneexperiments1.cate=='现场学分实验'}">
										<div class="row">
											<div class="col-md-3">
												<img src="images/Standard Study.JPG" alt="Standard Study"/>
											</div>
											<div class="col-md-9">
												<strong>${listoneexperiments1.cate}</strong>&nbsp;
												
												<br/>
												<br/>
												<br/>
												这是现场实验，参加实验应该先登录，对照<br/>相应的时间、地点等相关信息参加实验。
											</div>
										</div>
									</c:if>
									<c:if test="${listoneexperiments1.cate=='现场现金实验'}">
										<div class="row">
											<div class="col-md-3">
												<img src="images/Standard Study.JPG" alt="Standard Study"/>
											</div>
											<div class="col-md-9">
												<strong>${listoneexperiments1.cate}</strong>&nbsp;
												
												<br/>
												<br/>
												<br/>
												这是现场实验，参加实验应该先登录，对照<br/>相应的时间、地点等相关信息参加实验。
											</div>
										</div>
									</c:if>
									<c:if test="${listoneexperiments1.cate=='在线实验'}">
										<div class="row">
											<div class="col-md-3">
												<img src="images/Standard Study.JPG" alt="Standard Study"/>
											</div>
											<div class="col-md-9">
												<strong>${listoneexperiments1.cate}</strong>&nbsp;
												
												<br/>
												<br/>
												<br/>
												这是在线实验，参加实验应该先登录，对照<br/>相应的时间、链接等相关信息参加实验。
											</div>
										</div>
									</c:if>

									
								</td>
							</tr>
							<tr>
									<td class="strongbold">实验状态</td>
									<td>
										<p><strong>${listoneexperiments1.state}</strong> 可见 </p>
										<input type="hidden" id="state" value="${listoneexperiments1.state}" />
									</td>
							</tr>
							<tr>
									<td class="strongbold">创建时间</td>
									<td>
										${listoneexperiments1.createtime}
									</td>
							</tr>
							<c:if test="${listoneexperiments1.cate=='现场学分实验'}">
							<tr>
								<td class="strongbold"><span>支付</span></td>
								<td>
									
									<span>${listoneexperiments1.credit}</span><span>学分</span>
								</td>
							</tr>
							</c:if>
							<c:if test="${listoneexperiments1.cate=='现场现金实验'}">
							<tr>
								<td class="strongbold"><span>支付</span></td>
								<td>
									
									<span>${listoneexperiments1.pay}</span><span>¥</span>
								</td>
							</tr>
							</c:if>
							<c:if test="${listoneexperiments1.cate=='在线实验'}">
							
							</c:if>
								<tr>
									<td class="strongbold">
										实验摘要
									</td>
									<td>
										<span>
										${listoneexperiments1.outline}
                                        </span>
									</td>
								</tr>
								<tr>
									<td class="strongbold">
										实验详情
									</td>
									<td>
										<span>
										${listoneexperiments1.detail}
                                        </span>
									</td>
								</tr>
								<tr>
									<td class="strongbold">
										实验地点
									</td>
									<td>
										<span>
										${listoneexperiments1.field}
                                        </span>
									</td>
								</tr>	
						</tbody>
					</table>
					</c:forEach>
					
					
				</div>

				

			</section>
		</div>
		<!-- Study Info End -->

		<div class="col-sm-6">

		<!-- Restrictions Start -->
		
			
		
		<!-- Restrictions End -->

		<!-- Additional Study Info Start-->
		<section class="panel">
			<header class="panel-heading">
				其他实验信息
			</header>

			<div class="panel-body">
				<table class="table table-bordered table-striped">
					<tbody>
					<c:forEach items="${sessionScope.listoneexperiments1}" var="listoneexperiments1">				
						<tr>
							<td class="strongbold">
								学习链接
							</td>
							<td>
								<input name="" type="text" readonly="readonly" class="form-control sona-autoselect"  onclick="window.open('${listoneexperiments1.url}')"  value="${listoneexperiments1.url}" />
								<span class="help-block">这是参与实验的链接，你可能在向学生发送邮件或发布公告时用到。</span>
							</td>
						</tr>
					</c:forEach>	
					</tbody>
				</table>
			</div>
		</section>
		<!-- Additional Study Info End -->
		
		<!-- Researcher Info Start -->
		<section class="panel">
			<header class="panel-heading">
				教师信息
			</header>

			<div class="panel-body">
			<c:forEach items="${sessionScope.listoneexperiments1}" var="listoneexperiments1">
				<table class="table table-bordered table-striped">
					<tbody>
						<tr>
							<td class="strongbold"><span>教师姓名</span></td>
							<td>
											<p>
												<span>${listoneexperiments1.teachers_name}</span><a id="ctl00_ContentPlaceHolder1_repResearcher_ctl00_HyperLinkEmail" href="mailto:ylcheung34@gmail.com">
													<i class="fa fa-envelope pull-right"></i>
												</a>
											</p>
											
							</td>
						</tr>
						
							<tr>
								<td class="strongbold"><span>联系方式</span></td>
								<td>
									
										<p>
											<span>邮箱：</span><span>${listoneexperiments1.teachers_email}</span><a href="mailto:feifeihuang@baf.cuhk.edu.hk">
												<i class="fa fa-envelope pull-right"></i>
											</a>
										</p>
										<p>
											<span>电话：</span><span>${listoneexperiments1.teachers_tel}</span><a href="mailto:feifeihuang@baf.cuhk.edu.hk">
												<i class="fa fa-envelope pull-right"></i>
											</a>
										</p>
										
								</td>
							</tr>
						

					</tbody>
				</table>
			</c:forEach>
			</div>
		</section>
		<!-- Researcher Info End -->
		
		<!-- Comments Start -->
		
		<!-- Comments End -->
		</div>
		</div>
		<section class="panel">
		<header class="panel-heading">
					实验场次信息
					</header>
					<div class="panel-body">	
					<table class="table col-sm-6 table-bordered table-striped">
						<thead>
							<tr>
								<td class="strongbold">
										实验场次
								</td>
								<td class="strongbold">
										实验时间
								</td>
								<td class="strongbold">
										实验地点
								</td>
								<td class="strongbold">
										实验人数
								</td>
								<td class="strongbold">
										实验状态
								</td>
								<td class="strongbold">
										参加实验
								</td>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${sessionScope.listscreenings1}" var="listscreenings1">
							<c:if test="${not empty sessionScope.unjoinstudents}">
								<tr>
									<td>
										${listscreenings1.screenings} 
									</td>
									<td>
										${listscreenings1.starttime}/${listscreenings1.endtime}
									</td>
									<td>
										${listscreenings1.field}
									</td>
									<td>
										${listscreenings1.havestudents}/${listscreenings1.needstudents}
										<input type="hidden" id="havestudents${listscreenings1.screenings}" value="${listscreenings1.havestudents}"/>
										<input type="hidden" id="needstudents${listscreenings1.screenings}" value="${listscreenings1.needstudents}"/>  
									</td>
									<td>
										${listscreenings1.state}
									</td>
									<td>
								
											<c:forEach items="${sessionScope.unjoinstudents}" var="unjoinstudents">
											对不起，您不能参加该实验。原因：${unjoinstudents.reason}
											</c:forEach>
									
									
							        
									</td>
								</tr>
								
								</c:if>
								</c:forEach>
							<c:if test="${not empty sessionScope.joinstudents}">
								<c:forEach items="${sessionScope.listscreenings2}" var="listscreenings2">
								<tr>
									<td>
										${listscreenings2.screenings} 
									</td>
									<td>
										${listscreenings2.starttime}/<br> ${listscreenings2.endtime}
									</td>
									<td>
										${listscreenings2.field}
									</td>
									<td>
										${listscreenings2.havestudents}/${listscreenings2.needstudents}
										<input type="hidden" id="havestudents${listscreenings2.screenings}" value="${listscreenings2.havestudents}"/>
										<input type="hidden" id="needstudents${listscreenings2.screenings}" value="${listscreenings2.needstudents}"/>  
									</td>
									<td>
										${listscreenings2.state}
									</td>
									<td>							
											已参加
									</td>
								</tr>
								</c:forEach>
								</c:if>
							<c:forEach items="${sessionScope.listscreenings1}" var="listscreenings1">
							<c:if test="${empty sessionScope.joinstudents && empty sessionScope.unjoinstudents}">
								<tr>
									<td>
										${listscreenings1.screenings} 
									</td>
									<td>
										${listscreenings1.starttime}/<br> ${listscreenings1.endtime}
									</td>
									<td>
										${listscreenings1.field}
									</td>
									<td>
										${listscreenings1.havestudents}/${listscreenings1.needstudents}
										<input type="hidden" id="havestudents${listscreenings1.screenings}" value="${listscreenings1.havestudents}"/>
										<input type="hidden" id="needstudents${listscreenings1.screenings}" value="${listscreenings1.needstudents}"/>  
									</td>
									<td>
										${listscreenings1.state}
									</td>
									<td>
								
									<c:forEach items="${sessionScope.listoneexperiments1}" var="listoneexperiments1">
							     			<button   data-toggle="popover-x" data-target="#myPopover1${listscreenings1.screenings}" data-placement="top">参加</button>
							     		
											 <div id="myPopover1${listscreenings1.screenings}" class="popover popover-default">
							                    <div class="arrow"></div>
							                    <h3 class="popover-title"><span class="close pull-right" data-dismiss="popover-x">&times;</span>参加实验</h3>
							                    <div class="popover-content div2">
							                   
							                         <table class="table table-striped table-bordered" >
											        	<tbody id="tb1">
												        	<tr>
												        		<td class="strongbold">实验名称</td>
												        		<td>${listoneexperiments1.name}</td>
												        		
												        	</tr>
											       		 </tbody>
										         	</table>
										         	 <div class="popover-footer">
										         	<input type="hidden" name="id"  value="${listoneexperiments1.id}"/>
										         	<button  id="${listscreenings1.screenings}" onclick="return join(this)" type="submit" class="btn btn-sm btn-default">确认参加</button><button type="reset" class="btn btn-sm btn-default">取消</button>
										         	</div>
										        
							                    </div>
							                   
							                </div>
							            </c:forEach>
							         
									</td>
								</tr>
								</c:if>
								</c:forEach>
						</tbody>
					</table>
		 	</div>
		 	</section>


</div>




    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
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

 <script>
 function join(obj){
	 var screenings=$(obj).attr("id");
	 
	 var id=$("#input1").val();
	 console.log(id);
	 var var1=$("#havestudents"+screenings).val();
	 var var2=$("#needstudents"+screenings).val();
	
	 if(var1-var2>=0){
		 alert("对不起，实验人数已满！");
	 }else
	 {
		 
	
		 $.ajax({
			   url:'JoinExperiments1',// 跳转到 action  
			   data:{  
				   id : id,screenings : screenings
			    }, 
			    type:'post',  
			    cache:false,  
			    dataType:'json',  
			    success:function(data) { 
			    	if(data.flog==true){
			    		alert("参加成功！");
				    	 window.location.reload();
			    	}
			    	else{
			    		 alert("对不起，实验人数已满！");
			    	}
			    	
			     }
			   
		});
	 }
	 return false;
 }
 
 
 $(document).ready(function(){

	 var var3=$("#state").val();
	
	if(var3=="已完成"){
		 $("button").attr("disabled", true);
		
	 }
	});	   
 </script>


</body>
</html>