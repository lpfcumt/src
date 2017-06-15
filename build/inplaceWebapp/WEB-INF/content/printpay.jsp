<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <head>
 
 
   <link rel="shortcut icon" href="custom/favicon.ico"/>
        <!-- Bootstrap core CSS -->
        <link rel="shortcut icon" href="custom/favicon.ico"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        
        <link href="css/bootstrap-reset.css" rel="stylesheet" />
        <link href="css/typeaheadjs.css" rel="stylesheet" />
        <link href="assets/bootstrap-accessibility-plugin/css/bootstrap-accessibility.css" rel="stylesheet" />

        <!--external css-->

        
        <link href="assets/jquery-multi-select/css/multi-select.css" rel="stylesheet" />
        
    
        <!-- Custom styles for this template -->
        
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/style-responsive.css" rel="stylesheet" />
        
        <link href="css/open-sans-font.css" rel="stylesheet" />
        <link href="css/custom.css" rel="stylesheet" />
        <link href="css/tasks.css" rel="stylesheet" />


    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="dist/css/bootstrapValidator.css"/>
    
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link href="http://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

    <script type="text/javascript" src="vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/Ajax.js"></script>
   
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script>     
     
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>

       
    
        <script src="btn/js/bootstrap-popover-x.js" type="text/javascript"></script> 
       <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
		<script src="js/bootstrap-datetimepicker.js"></script>        
    <title>打印学生名单</title>
  </head>
  <body>
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
    
 


    
      

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
 <script src="btn/jquery.PrintArea.js"></script>  
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
				<style type="text/css" media=print>    
					.noprint{display : none }    
					</style>    
   
					<p class="noprint"></p>  
					 <script>    
					function preview(oper)           
					{    
					if (oper < 10)    
					{    
					bdhtml=window.document.body.innerHTML;//获取当前页的html代码    
					sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域    
					eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域    
					prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html    
					    
					prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html    
					window.document.body.innerHTML=prnhtml;    
					window.print();    
					window.document.body.innerHTML=bdhtml;    
					} else {    
					window.print();    
					}    
					}    
					</script>
				
					<section class="panel">
					
					
					<header class="panel-heading">
					  <div dispay="table-caption" >
					  
						<h4><strong><p>请输入查询条件</p></strong></h4>
						<form class="form-horizontal"  id="defaultForm"  method="post">
						<div class="form-group " style="position:relative">
							<label class="col-sm-1 control-label ">实验类型:</label>
							<div class="col-sm-2">
					  		<select class="selectpicker form-control" name="cate">
								  <optgroup >
								    <option selected>现场现金实验</option>
								    <option>现场学分实验</option>
								    <option>在线实验</option>
								  </optgroup>
								</select>
			                </div><br> <br>
			                 
							<label class="col-sm-1 control-label ">开始时间:</label>
							<div class="col-sm-2">
					  		<input class="datetimepicker1 form-control" type="text" name="starttime">
			                </div>
			                 
			                <label class="col-sm-1 control-label ">结束时间:</label>
							<div class="col-sm-2">
					  		<input class="datetimepicker1 form-control" type="text" name="endtime">
			                </div>
			                
			               <br> <br>
							<div class="col-sm-1">
					  		<input class="btn btn-default form-control" id="sub" type="button" value="提交">
			                </div> 
					  	</div>
					  	</form>
					  </div>
					</header>
					<!--startprint1-->  
					<div class="panel-body"> 
					<h4><strong><p>学生名单</p></strong></h4>
					  <table id="table" class="table table-hover col-sm-6 table-bordered table-striped">
					  	<thead>
					  		<tr>
					  			<th style="vertical-align:middle; text-align:center;">姓名</th>
					  			<th style="vertical-align:middle; text-align:center;">学号</th>
					  			<th style="vertical-align:middle; text-align:center;">班级</th>
					  			<th style="vertical-align:middle; text-align:center;">电话</th>
					  			<th style="vertical-align:middle; text-align:center;">次数</th>
					  			<th style="vertical-align:middle; text-align:center;">支付</th>
					  			<th style="vertical-align:middle; text-align:center;">备注</th>
					  		</tr>
					  	</thead>
					  	<tbody>
					  		
					  	</tbody>
					  </table>
					 </div>
					<!--endprint1-->  
					</section>
					
					   
					<div style="float:right">   
					<input id="btnPrint" class="btn btn-default" type="button" value="打印" onclick=preview(1) />  
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
					
	<script>
	 $(document).ready(function() {
         
         $(".datetimepicker1").datetimepicker({
        	 format: 'YYYY-MM-DD hh:mm:ss',  
             locale: moment.locale('zh-cn') 
         });
	 });
	 
	 $("#sub").click(function(){
		 var url="printsPay?"+$("#defaultForm").serialize();
		 $.ajax({
			 url:url,
			 type:'post',
			 cache:false,
			 dateType:'json',
			 date:{},
			 success:function(data){
				 $("#table tbody").remove();
				 var jsonObj=eval(data.printspayorcredit);
				 var cate=data.cate;
				 var pay="";
				 var credit="";
				 if(jsonObj.length==0){
					 var $tab = $("#table");
					 var $tr = $('<tr>');
					 $tr.append("对比起，没有查找到相应的信息！")
					 $tab.append($tr);
				 }
				 else{
					 if(cate=='现场现金实验'){ pay="¥" }
					 else if(cate == '现场学分实验'){  credit = "学分";}
					 else{ }
					 var $tab = $("#table");
					 $.each(jsonObj,function (index , item){
						 var $tr = $('<tr>');
						 $tr.append("<td style='vertical-align:middle; text-align:center;'>"+item.name+"</td>");
						 $tr.append("<td style='vertical-align:middle; text-align:center;'>"+item.students_id+"</td>");
						 $tr.append("<td style='vertical-align:middle; text-align:center;'>"+item.school+"</td>");
						 $tr.append("<td style='vertical-align:middle; text-align:center;'>"+item.tel+"</td>");
						 $tr.append("<td style='vertical-align:middle; text-align:center;'>"+item.count+"</td>");
						 $tr.append("<td style='vertical-align:middle; text-align:center;'>"+item.pay+pay+credit+"</td>");
						 $tr.append("<td style='vertical-align:middle; text-align:center;'></td>");
						 $tab.append($tr);
					 })
				 }
			 }
		 })
		 return false;
	 })
	</script>				
					
					
  </body>
 </html>