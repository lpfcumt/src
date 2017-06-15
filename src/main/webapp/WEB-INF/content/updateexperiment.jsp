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
    
	
	
	<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
	
   <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/Ajax.js"></script>
    
   
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script>     
      
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    
    <link href="http://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
        <link href="btn/css/bootstrap-popover-x.css" media="all" rel="stylesheet" type="text/css" />
        
        <script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
        <script src="btn/js/bootstrap-popover-x.js" type="text/javascript"></script> 
        <script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>  
        <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
        <script src="js/bootstrap-datetimepicker.js"></script>        
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
            .left{
            	float:left;
            }
            .right{
            	float:right;
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
						<div style="border:#1C86EE;">
						    <!--navigation start-->
						
						        <!-- Brand and toggle get grouped for better mobile display -->
						<ul class="nav navbar-default nav-pills nav-justified" style="font-size:16px;">
							<li><a href="ListResentExperiments"><span class="glyphicon glyphicon-home"></span>&nbsp;主页</a></li>
							<li><a href="ListTeacherExperiments">我的实验</a></li>
							<li><a href="ListAllExperiments2">所有实验</a></li>
							<li><a href="addexperimentcate">创建实验</a></li>
							<li><a href="ListTeachersInfo">个人信息</a></li>
							<li><a href="return_Exitmain">退出登录&nbsp;<span class="glyphicon glyphicon-log-out"></span></a></li>
						</ul>
						
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
   
		<!-- Experiment Info Start -->
			
			<section class="panel">
				<header class="panel-heading">
					实验信息
				</header>
				<input id="lastscreenings" type="hidden" value="${sessionScope.screnings}"/>
				<div class="panel-body">
					<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">	
					
					<input id="input1" type="hidden" value="${listoneexperiments.id}"/>
					<input id="pub" type="hidden" value="${listoneexperiments.pubexper}"/>
					<table class="table col-sm-6 table-bordered table-striped">
						<tbody>
							<tr>
								<td class="strongbold">实验名称</td>
								<td>
									<h4><span><strong>${listoneexperiments.name}</strong></span></h4>
									<input type="hidden" readonly="readonly" name="id"  value="${listoneexperiments.id}"/>
								</td>
							</tr>
							
							<tr>
								<td class="strongbold" style="width:80px;">实验类型</td>
								<td>
									
									
									<c:if test="${listoneexperiments.cate=='现场学分实验'}">
										<div class="row">
											<div class="col-md-3">
												<img src="images/Standard Study.JPG" alt="Standard Study"/>
											</div>
											<div class="col-md-9">
												<strong>${listoneexperiments.cate}</strong>&nbsp;
												
												<br/>
												<br/>
												<br/>
												这是现场实验，参加实验应该先登录，对照<br/>相应的时间、地点等相关信息参加实验。
											</div>
										</div>
									</c:if>
									<c:if test="${listoneexperiments.cate=='现场现金实验'}">
										<div class="row">
											<div class="col-md-3">
												<img src="images/Standard Study.JPG" alt="Standard Study"/>
											</div>
											<div class="col-md-9">
												<strong>${listoneexperiments.cate}</strong>&nbsp;
												
												<br/>
												<br/>
												<br/>
												这是现场实验，参加实验应该先登录，对照<br/>相应的时间、地点等相关信息参加实验。
											</div>
										</div>
									</c:if>
									<c:if test="${listoneexperiments.cate=='在线实验'}">
										<div class="row">
											<div class="col-md-3">
												<img src="images/Standard Study.JPG" alt="Standard Study"/>
											</div>
											<div class="col-md-9">
												<strong>${listoneexperiments.cate}</strong>&nbsp;
												
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
										<p><strong>${listoneexperiments.state}</strong> 可见 </p>
										<input type="hidden" id="state" value="${listoneexperiments.state}"/>
									</td>
							</tr>
							<tr>
									<td class="strongbold">创建时间</td>
									<td>
										${listoneexperiments.createtime}
									</td>
							</tr>
							<c:if test="${listoneexperiments.cate=='现场学分实验'}">
							<tr>
								<td class="strongbold"><span>支付</span></td>
								<td>
									
									<span><input id="credit" type="text" style="width:100px" class="form-control sona-autoselect" name="credit"  value="${listoneexperiments.credit}"/></span><span>学分</span>
								</td>
							</tr>
							</c:if>
							<c:if test="${listoneexperiments.cate=='现场现金实验'}">
							<tr>
								<td class="strongbold"><span>支付</span></td>
								<td>
									
									<span><input type="text" id="pay" style="width:100px" class="form-control sona-autoselect" name="pay"  value="${listoneexperiments.pay}"/></span><span>¥</span>
								</td>
							</tr>
							</c:if>
							<c:if test="${listoneexperiments.cate=='在线实验'}">
							
							</c:if>
								<tr>
									<td class="strongbold">
										实验摘要
									</td>
									<td>
										<span >
										
										${listoneexperiments.outline}
										
                                        </span>
									</td>
								</tr>
								<tr>
									<td class="strongbold">
										实验详情
									</td>
									<td>
										<span>
										<textarea id="detail" class="form-control sona-autoselect" name="detail" style="width:500px;height:100px;">
										${listoneexperiments.detail}
										</textarea>
                                        </span>
									</td>
								</tr>
								<tr>
									<td class="strongbold">
										实验地点
									</td>
									<td>
										<span >
										
										${listoneexperiments.field}
										
                                        </span>
									</td>
								</tr>
							
							
							
						</tbody>
					</table>
					</c:forEach>
					</div>
					</section>
					<section class="panel">
						<header class="panel-heading">
							其他实验信息
						</header>
			
						<div class="panel-body">
							<table class="table table-bordered table-striped">
								<tbody>
								<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">				
									<tr>
										<td class="strongbold">
											学习链接
										</td>
										<td>
											<input id="url" name=""  onclick="window.open('${listoneexperiments.url}')" type="text" name="url"  class="form-control sona-autoselect" value="${listoneexperiments.url}" />
											<span class="help-block">这是参与实验的链接，你可能在向学生发送邮件或发布公告时用到。</span>
										</td>
									</tr>
								</c:forEach>	
								</tbody>
							</table>
							<div  >
					
					<div class="right">
					<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">	
					 
					 
					 
					 <input type="button" name="deleteExperiments?id=${listoneexperiments.id}"   class="btn btn-default right "  value="删除" onClick="return deleteExperiments(this)">
					 <span class="right">&nbsp;</span><input id="pub1" type="button" name="pubExperiments?id=${listoneexperiments.id}" class="btn btn-default right "  value="发布"  onClick="return pubExperiments(this)">
					 </c:forEach>
					 <span class="right">&nbsp;</span><input type="submit" id="btn1" class="btn btn-default right " onClick="return update1()" value="保存">
					 
					</div>
					 
					  </div>
						</div>
					</section>
					
					
					<section class="panel">
					<header class="panel-heading">
					实验场次信息
					</header>
					<div id="div1">
					<div class="panel-body">
					<table class="table col-sm-6 table-bordered table-striped" id="s1">
						<thead>
							<tr>
								<td class="strongbold">
										实验场次
								</td>
								<td class="strongbold">
										开始时间
								</td>
								<td class="strongbold">
										结束时间
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
										编辑学生
								</td>
								<td class="strongbold">
										操作
								</td>
							</tr>
						</thead>
						<tbody id="tb2">
						<c:forEach items="${sessionScope.listscreenings}" var="listscreenings">	
								<tr>
									<td style='width:80px'>
										<span>${listscreenings.screenings} </span>
									</td>
									<td style='position:relative;width:160px'>
										<input id="starttime${listscreenings.screenings}" style="width:160px;overflow-x:visible;overflow-y:visible;" type="text" value="${listscreenings.starttime}" class="datetimepicker1 form-control"></input>
										
										
									</td>
									<td style='position:relative;width:160px'>
										<input id="endtime${listscreenings.screenings}" style="width:160px;overflow-x:visible;overflow-y:visible;" type="text" value="${listscreenings.endtime}" class="datetimepicker1 form-control"></input>
									</td>
									<td>
										
										<input id="field${listscreenings.screenings}" type="text" value="${listscreenings.field}" class="form-control">
										
									</td>
									<td style='width:100px'>
										 <div class="form-group">
										<p class="left">${listscreenings.havestudents}/</p>&emsp;<input id="needstudents${listscreenings.screenings}" style="width:50px;" type="text" value="${listscreenings.needstudents}" class="form-control left"></input> 
										<input type="hidden" id="havestudents${listscreenings.screenings}" value="${listscreenings.havestudents}"/>
										<input type="hidden" id="needstudents${listscreenings.screenings}" value="${listscreenings.needstudents}"/>
										</div>
									</td>
									<td style='width:100px'>
										${listscreenings.state}
									</td>
									<td id="td1" style='width:120px'>
									<div id="div2">
											 <button id="${listscreenings.screenings}" class="btn btn1 btn-default btn-sm" data-toggle="popover-x" data-target="#myPopover${listscreenings.screenings}" data-placement="top">添加</button>
											 <div id="myPopover${listscreenings.screenings}" class="popover popover-default">
							                    <div class="arrow"></div>
							                    <h3 class="popover-title"><span class="close pull-right" data-dismiss="popover-x">&times;</span>添加学生</h3>
							                    <div style="width:270px; height:225px; overflow:scroll;" class="popover-content div1" >
							                         <table class="table  table-striped table-bordered" id="table${listscreenings.screenings}">
											        <thead id="tb">
												       <tr >
													      <th>
														   姓名
													      </th>
							                               <th>
														     操作
													      </th>
												       </tr>
											        </thead>
											        <tbody>
											        </tbody>
										         </table>
							                    </div>
							                   
							                </div>
							                <button id="${listscreenings.screenings}" class="btn btn2 btn-default btn-sm" data-toggle="popover-x" data-target="#myPopover1${listscreenings.screenings}" data-placement="top">删除</button>
											 <div id="myPopover1${listscreenings.screenings}" class="popover popover-default">
							                    <div class="arrow"></div>
							                    <h3 class="popover-title"><span class="close pull-right" data-dismiss="popover-x">&times;</span>删除学生</h3>
							                    <div style="width:270px; height:225px; overflow:scroll;" class="popover-content div2">
							                         <table class="table table-striped table-bordered" id="table1${listscreenings.screenings}">
											        <thead>
												       <tr >
													      <th>
														   姓名
													      </th>
							                               <th>
														     操作
													      </th>
												       </tr>
											        </thead>
											        <tbody id="tb1${listscreenings.screenings}">
											        </tbody>
										         </table>
							                    </div>
							                   
							                </div>
										</div>
									</td>
									<td style='width:110px'>
										<a id="res" class="${listscreenings.screenings}"  onclick="return reScreenings(this)"  >保存</a>
										<a id="des" href="deleteScreenings?experiments_id=${listscreenings.experiments_id}&screenings=${listscreenings.screenings}" onclick="return deleteScreenings(this)"  >删除</a>
										<a href="PrintStudent?id=${listscreenings.experiments_id}&screenings=${listscreenings.screenings}" target="_blank">打印</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<input type="submit"  onclick="return addScreenings(this)" class="btn btn-default right"  value="添加场次">&nbsp; <span class="right">&nbsp;</span>
					<input type="submit"  onclick="return printAll(this)" class="btn btn-default right"  value="打印全部"> <span class="right">&nbsp;</span>
					</div>
					</div>
					</section>
					
					<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">	
					<c:if test="${listoneexperiments.state=='已完成'}">
					<section class="panel">
					<header class="panel-heading">
					完成实验的学生
					</header>
					
					<div class="panel-body">
					
					
					<table class="table col-sm-6 table-bordered table-striped">
						<thead>
							<tr>
								<td class="strongbold">
										姓名
								</td>
								<td class="strongbold">
										学号
								</td>
								<td class="strongbold">
										电话
								</td>
								<td class="strongbold">
										邮箱
								</td>
								
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${sessionScope.listcomstudents}" var="listcomstudents">		
								<tr>
									<td>
										${listcomstudents.name} 
									</td>
									<td>
										${listcomstudents.students_id}
										
									</td>
									<td>
										${listcomstudents.tel}
										
									</td>
									<td>
										${listcomstudents.email}
									</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
					</section>
					<section class="panel">
					<header class="panel-heading">
					未完成实验的学生
					</header>
					
					<div class="panel-body">
					
					
					<table class="table col-sm-6 table-bordered table-striped">
						<thead>
							<tr>
								<td class="strongbold">
										姓名
								</td>
								<td class="strongbold">
										学号
								</td>
								<td class="strongbold">
										电话
								</td>
								<td class="strongbold">
										邮箱
								</td>
								
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${sessionScope.listuncomstudents}" var="listuncomstudents">	
								<tr>
									<td>
										${listuncomstudents.name} 
									</td>
									<td>
										${listuncomstudents.students_id}
										
									</td>
									<td>
										${listuncomstudents.tel}
										
									</td>
									<td>
										${listuncomstudents.email}
									</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
					</section>
					</c:if>
					</c:forEach>
			
		</div>


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
   >
   
    
    <script src="assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js"></script>
    

    <!-- Localized values for the bootstrap-datepicker -->
    


    <script src="assets/jquery-knob/js/jquery.knob.1.2.8.min.js"></script>
    <script type="text/javascript" src="js/typeahead.bundle-0.10.2.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.pulsate.min.js"></script>


    
      

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

 <script>
 $("#tb2 .btn1").click(function(){
	 
	
	 var id=$("#input1").val();
	 var screenings=$(this).attr("id");
	
	 $.ajax({
		   url:'ListCanStudents',// 跳转到 action  
		   data:{  
			   id : id,screenings : screenings  
		    }, 
		    type:'get',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	$(".div1 table tbody tr").remove();
		    	var jsonObj=eval(data.listcanstudents);
		    	if(jsonObj==null){}
		    	else{
		    		
		    		var $tab1 = $("#table"+screenings);
		    		
		    		
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		var $tr = $('<tr>');
		    		$tr.append("<td><span >"+item.name+"</spa></td>");
		    		$tr.append("<td><a onclick='return add(this)'   name='"+item.id+"' id='"+screenings+"' >添加</a></td>");
		    		
		    		
    			 	$tab1.append($tr);
		    		}); 
		    	}
		     }
		   
	});
	
	
	
	return false;
 });
 
 $("#tb2 .btn2").click(function(){
	 
		
	 var id=$("#input1").val();
	 var screenings=$(this).attr("id");
	 $.ajax({
		   url:'ListStudentByScreening',// 跳转到 action  
		   data:{  
			   id : id,screenings : screenings  
		    }, 
		    type:'get',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	$(".div2 table tbody tr").remove();
		    	var jsonObj=eval(data.liststudentbyscreenings);
		    	if(jsonObj==null){}
		    	else{
		    		
		    		var $tab1 = $("#tb1"+screenings);
		    		
		    		
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		var $tr = $('<tr>');
		    		$tr.append("<td><span >"+item.name+"</spa></td>");
		    		$tr.append("<td><a onclick='return delete1(this)'   name='"+item.id+"' id='"+screenings+"' >删除</a></td>");
		    		
		    		
			 	$tab1.append($tr);
		    		}); 
		    	}
		     }
		   
	});

 });	    
 function add(obj) {
	
	 var id=$("#input1").val();
	 var screenings=$(obj).attr("id");
	 var students_id=$(obj).attr("name")
	 var var1=$("#havestudents"+screenings).val();
	 var var2=$("#needstudents"+screenings).val();
	 if(var1-var2>=0){
		 alert("对不起，实验人数已满！");
	 }else{
		 $.ajax({
			   url:'AddStudents',// 跳转到 action  
			   data:{  
				   id : id,screenings : screenings, students_id:students_id 
			    }, 
			    type:'post',  
			    cache:false,  
			    dataType:'json',  
			    success:function(data) { 
			    	if(data.flog==true){
			    		alert("已添加！");
				    	 window.location.reload();
			    	}
			    	else{
			    		alert("对不起，实验人数已满！");
			    	}
			    	
			     }
			   
		});
	 }
	   
 };
 
 function delete1(obj) {	
	 var id=$("#input1").val();
	 var screenings=$(obj).attr("id");
	 var students_id=$(obj).attr("name")
	 
	 $.ajax({
		   url:'DeleteStudents',// 跳转到 action  
		   data:{  
			   id : id,screenings : screenings, students_id:students_id 
		    }, 
		    type:'post',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	alert("已删除！");
		    	 window.location.reload();
		     }
		   
	});
	   
 };
 
 
 
 function update1() {
	
	 var id=$("#input1").val();
	 var credit=$("#credit").val();
	 var pay=$("#pay").val();
	 var detail=$("#detail").val();
	 var url=$("#url").val()
	 
	 $.ajax({
		   url:'UpdateExperiments',// 跳转到 action  
		   data:{  
			   id : id,credit : credit, pay:pay,detail:detail,url:url
		    }, 
		    type:'post',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	alert("修改成功！");
		    	window.location.reload(); 
		     }
		   
	});
	return false;   
 };
 
 function a(){
	 return true;
 };
 
 $(document).ready(function(){
	 var var1=$("#havestudents").val();
	 var var2=$("#needstudents").val();
	 var pub=$("#pub").val();
	 if(pub=="已发布"){
		 $("#pub1").attr('disabled',true);
	 }
	 console.log( $(".div1 button"));
	 console.log(var2);
	 var var3=$("#state").val();
	
	if(var3=="已完成"){
		 $("#div1 button").attr('disabled', true);
		 $("#btn1").attr('disabled', true);
		 $("#div2").css('display','block');
	 }
	});	   
 

	
function deleteScreenings(obj){
			var url=$(obj).attr("href");
			console.log(url);
			var txt=  "确定要删除该实验场次吗？";
			var option = {
				title: "",
				btn: parseInt("0011",2),
				onOk: function(){
				console.log("确认啦");
				$.ajax({
					   url:url,// 跳转到 action  
					   
					    type:'post',  
					    cache:false,  
					    dataType:'json',  
					    success:function(data) { 
					    	alert("已删除！");
					    	 window.location.reload();
					     }
					   
				});
				
				}
				
			}
			window.wxc.xcConfirm(txt, "custom", option);
			return false;
};

function reScreenings(obj){
	var experiments_id=$("#input1").val();
	var screenings=$(obj).attr("class");
	var starttime=$("#starttime"+screenings).val();
	var endtime=$("#endtime"+screenings).val();
	var field=$("#field"+screenings).val();
	var needstudents=$("#needstudents"+screenings).val();
	var txt=  "确定要修改该实验场次吗？";
	var option = {
		title: "",
		btn: parseInt("0011",2),
		onOk: function(){
		console.log("确认啦");
		$.ajax({
			   url:"reScreenings",// 跳转到 action  
			   data:{
				   experiments_id:experiments_id,screenings:screenings,starttime:starttime,endtime:endtime,field:field,needstudents:needstudents
			   },
			    type:'post',  
			    cache:false,  
			    dataType:'json',  
			    success:function(data) { 
			    	alert("修改成功！");
			    	 window.location.reload();
			     }
			   
		});
		
		}
		
	}
	window.wxc.xcConfirm(txt, "custom", option);
	return false;
};
			
$(document).ready(function() {
	 $(".datetimepicker1").datetimepicker();

     $("#btn1").click(function() {
     	if (document.getElementById("Num").value == "" || document.getElementById("Num").value.search("^[0-9]*$") == -1) { 
				document.getElementById("errmsg1").style.display = "block";//判断payNum是否为空或不是数字 提示错误 
				document.getElementById("errmsg1").innerHTML = "提示信息：行数为空或不是数字！"; 
				} 
				else { 
				document.getElementById("errmsg1").style.display = "none";//隐藏提示信息 
				var Num = parseInt(document.getElementById("Num").value); //获取分期数 
				var flag = true;
				$("#table1 tbody").remove();
				var $tab1 = $("#table1");
				for(var i = 1; i <= Num; i++) { 
					var $tr = $('<tr>');
					$tr.append("<td><input name='screenings' type='text' class='input form-control' disabled='true' value='"+i+"' id='input1"+i+"'></td>");
					$tr.append("<td  style='position:relative'><input name='starttime' type='text' class='form-control datetimepicker1' placeholder='2017-10-04 00:00:00' id='input2"+i+"'  ></td>");
					$tr.append("<td style='position:relative'><input name='endtime' type='text' class='form-control datetimepicker1' placeholder='2017-10-04 00:00:00' id='input3"+i+"'></td>");
					$tr.append("<td><input name='needstudents' type='text' class='input form-control' = id='input4"+i+"'></td>");
					$tr.append("<td><input name='field' type='text' class='input form-control' id='input5"+i+"'></td>");
					
					$tab1.append($tr);
				}
				document.getElementById("div1").style.display = "block"; 
				$(".datetimepicker1").datetimepicker({
					
				});
				 }
     });
     

})

//删除实验
function deleteExperiments(obj){
	var id=$("#input1").val();
	var txt=  "确定要删除该实验吗？";
	var option = {
		title: "",
		btn: parseInt("0011",2),
		onOk: function(){
		console.log("确认啦");
		$.ajax({
			   url:'deleteExperiments',// 跳转到 action  
			   data:{
				   id:id
			   },
			    type:'post',  
			    cache:false,  
			    dataType:'json',  
			    success:function(data) { 
			    	alert("删除成功！");
			    	 window.location='ListTeacherExperiments';
			    }
		   
		});
		
		}
		
	}
	window.wxc.xcConfirm(txt, "custom", option);
	return false;
};
//发布实验
function pubExperiments(obj){
	var id=$("#input1").val();
	var txt=  "确定要发布该实验吗？";
	var option = {
		title: "",
		btn: parseInt("0011",2),
		onOk: function(){
		console.log("确认啦");
		$.ajax({
			   url:'pubExperiments',// 跳转到 action  
			   data:{
				   id:id
			   },
			    type:'post',  
			    cache:false,  
			    dataType:'json',  
			    success:function(data) { 
			    	alert("发布成功！");
			    	 window.location='ListTeacherExperiments';
			    }
		   
		});
		
		}
		
	}
	window.wxc.xcConfirm(txt, "custom", option);
	return false;
};
var i=0;
function addScreenings(obj){
	
 	var lastscreenings=$("#lastscreenings").val();
	var $tab1 = $("#tb2");
			i+=1;
			if(i==1){
			i+=Number(lastscreenings);
			};
			
		var $tr = $('<tr>');
		$tr.append("<td><span id='screenings1"+i+"'>"+i+"</span></td>");
		$tr.append("<td style='position:relative'><input id='starttime1"+i+"' style='width:160px;overflow-x:visible;overflow-y:visible;' type='text'  class='datetimepicker1 form-control'></input></td>");
		$tr.append("<td style='position:relative'><input id='endtime1"+i+"' style='width:160px;overflow-x:visible;overflow-y:visible;' type='text'  class='datetimepicker1 form-control'></input></td>");
		$tr.append("<td><input id='field1"+i+"'  type='text' class='form-control'>");
		$tr.append("<td><p class='left'>0/</p><input id='needstudents1"+i+"'  style='width:50px;' type='text' class='form-control left'></input></td>");
		$tr.append("<td>创建中</td>");
		$tr.append("<td><button  class='btn btn-default btn-sm' disabled='desabled'>添加</button><button  class='btn btn-default btn-sm' disabled='desabled'>删除</button></td>");
		$tr.append("<td><a class='"+i+"' onclick='return saveScreenings(this)'>保存</a></td>");
		
	 	$tab1.append($tr);
	 	console.log(i);
	 	
	 	$(".datetimepicker1").datetimepicker();
}

function saveScreenings(obj){
	var experiments_id=$("#input1").val();
	var i=$(obj).attr('class');
	var screenings=i;
	var starttime=$("#starttime1"+i).val();
	var endtime=$("#endtime1"+i).val();
	var field=$("#field1"+i).val();
	var needstudents=$("#needstudents1"+i).val();
	var txt=  "确定要保存该实验场次吗？";
	var option = {
			title: "",
			btn: parseInt("0011",2),
			onOk: function(){
			console.log("确认啦");
			$.ajax({
				   url:'addScreenings1',// 跳转到 action  
				   data:{
						screenings:screenings, starttime :starttime, endtime: endtime, field: field,experiments_id:experiments_id,needstudents:needstudents
					},
				    type:'post',  
				    cache:false,  
				    dataType:'json',  
				    success:function(data) { 
				    	alert("保存成功！如需修改该场次信息，请刷新页面。");
				    	 
				    }
			   
			});
			
			}
			
		}
	window.wxc.xcConfirm(txt, "custom", option);
}

function printAll(obj){
	var experiments_id=$("#input1").val();
	var url='/printallstudent?id='+experiments_id
	window.open(url);
}
 </script>


</body>
</html>