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


            <!--main content start-->
            <section id="primary-content">
                <section class=" wrapper site-min-height">
                    <div class="row">
                        <div class="col-lg-3">
                            <!-- banner start -->
                            <div class="row">
                                <div class="col-xs-12">
                                    <section class="panel">
                                        <a href="http://sm.xmu.edu.cn/html/about/department/marketing/"  target="_blank" id="ctl00_BannerLink">
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
		<div class="col-sm-6">
			<section class="panel">
				<header class="panel-heading">
					实验信息
				</header>
				<div class="panel-body">
					<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">	
					
					<input id="input1" type="hidden" value="${listoneexperiments.id}"/>
					<table class="table col-sm-12 table-bordered table-striped">
						<tbody>
							<tr>
								<td class="strongbold" style="width:80px;">实验名称</td>
								<td>
									<h4><span><strong>${listoneexperiments.name}</strong></span></h4>
									
								</td>
							</tr>
							
							<tr>
								<td class="strongbold">实验类型</td>
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
									
									<span>${listoneexperiments.credit}</span><span>学分</span>
								</td>
							</tr>
							</c:if>
							<c:if test="${listoneexperiments.cate=='现场现金实验'}">
							<tr>
								<td class="strongbold"><span>支付</span></td>
								<td>
									
									<span>${listoneexperiments.pay}</span><span>¥</span>
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
										<span>
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
										${listoneexperiments.detail}
                                        </span>
									</td>
								</tr>
								<tr>
									<td class="strongbold">
										实验地点
									</td>
									<td>
										<span>
										${listoneexperiments.field}
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
					<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">				
						<tr>
							<td class="strongbold">
								学习链接
							</td>
							<td>
								<input name="" type="text" readonly="readonly"   onclick="window.open('${listoneexperiments.url}')" class="form-control sona-autoselect" value="${listoneexperiments.url}" />
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
			<c:forEach items="${sessionScope.listoneexperiments}" var="listoneexperiments">
				<table class="table table-bordered table-striped">
					<tbody>
						<tr>
							<td class="strongbold"><span>教师姓名</span></td>
							<td>
											<p>
												<span>${listoneexperiments.teachers_name}</span><a id="ctl00_ContentPlaceHolder1_repResearcher_ctl00_HyperLinkEmail" href="mailto:ylcheung34@gmail.com">
												</a>
											</p>
											
							</td>
						</tr>
						
							<tr>
								<td class="strongbold"><span>联系方式</span></td>
								<td>
									
										<p>
											<span>邮箱：</span><span>${listoneexperiments.teachers_email}</span><a href="mailto:feifeihuang@baf.cuhk.edu.hk">
											</a>
										</p>
										<p>
											<span>电话：</span><span>${listoneexperiments.teachers_tel}</span><a href="mailto:feifeihuang@baf.cuhk.edu.hk">
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
										参与学生
								</td>
								<td class="strongbold">
										实验状态
								</td>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${sessionScope.listscreenings}" var="listscreenings">	
								<tr>
									<td>
										${listscreenings.screenings} 
									</td>
									<td>
										${listscreenings.starttime}/<br> ${listscreenings.endtime}
									</td>
									<td>
										${listscreenings.field}
									</td>
									<td>
										${listscreenings.havestudents}/${listscreenings.needstudents} 
									</td>
									<td id="td1">
										<a id="${listscreenings.screenings}" class="${listscreenings.screenings}" >点击查看</a>
										<div style="display:none;" id="div${listscreenings.screenings}">
											<select id="select${listscreenings.screenings}" size="0">
											</select>
										</div>
									</td>
									<td>
										${listscreenings.state}
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
					</div>
		 </section>

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

    </div>

    </form>



    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>                   



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
 $("#td1 a").click(function(){
	 
	
	 var id=$("#input1").val();
	 var screenings=$(this).attr("class");
	 console.log(screenings);
	 $.ajax({
		   url:'ListStudentByScreening',// 跳转到 action  
		   data:{  
			   id : id,screenings : screenings  
		    }, 
		    type:'get',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	var jsonObj=eval(data.liststudentbyscreenings);
		    	if(jsonObj==null){}
		    	else{
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		$("#select"+screenings).append("<option value="+ item.id+">"+ item.name+"</option>"); 
		    		}); 
		    	}
		     }
		   
	});
	$("#div"+screenings).css('display','block');
	
	return false; 
 })
 </script>


</body>
</html>