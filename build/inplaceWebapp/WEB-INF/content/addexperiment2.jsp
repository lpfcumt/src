<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>
	创建实验
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
    <script src="js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/Ajax.js"></script>
    <script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dist/js/formValidation.js"></script>
    <script type="text/javascript" src="dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="dist/js/language/zh_CN.js"></script>   

<script type="text/javascript">
//下拉框交换JQuery
$(function(){
    //移到右边
    $('#addone').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select1 option:selected').appendTo('#select2');
    });
    //移到左边
    $('#removeone').click(function() {
        $('#select2 option:selected').appendTo('#select1');
    });
    //全部移到右边
    $('#add_alloneone').click(function() {
        //获取全部的选项,删除并追加给对方
        $('#select1 option').appendTo('#select2');
    });
    //全部移到左边
    $('#remove_alloneone').click(function() {
        $('#select2 option').appendTo('#select1');
    });
    //双击选项
    $('#select1').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select2'); //追加给对方
    });
    //双击选项
    $('#select2').dblclick(function(){
       $("option:selected",this).appendTo('#select1');
    });
});
</script>
<script type="text/javascript">
//下拉框交换JQuery
$(function(){
    //移到右边
    $('#addtwo').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select3 option:selected').appendTo('#select4');
    });
    //移到左边
    $('#removetwo').click(function() {
        $('#select4 option:selected').appendTo('#select3');
    });
    //全部移到右边
    $('#add_alltwo').click(function() {
        //获取全部的选项,删除并追加给对方
        $('#select3 option').appendTo('#select4');
    });
    //全部移到左边
    $('#remove_alltwo').click(function() {
        $('#select4 option').appendTo('#select3');
    });
    //双击选项
    $('#select3').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select4'); //追加给对方
    });
    //双击选项
    $('#select4').dblclick(function(){
       $("option:selected",this).appendTo('#select3');
    });
});
</script>
<script type="text/javascript">
//下拉框交换JQuery
$(function(){
    //移到右边
    $('#addthree').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select5 option:selected').appendTo('#select2');
    });
    //移到左边
    $('#removethree').click(function() {
        $('#select2 option:selected').appendTo('#select5');
    });
    //全部移到右边
    $('#add_allthree').click(function() {
        //获取全部的选项,删除并追加给对方
        $('#select5 option').appendTo('#select2');
    });
    //全部移到左边
    $('#remove_allthree').click(function() {
        $('#select2 option').appendTo('#select5');
    });
    //双击选项
    $('#select5').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select2'); //追加给对方
    });
    //双击选项
    $('#select2').dblclick(function(){
       $("option:selected",this).appendTo('#select5');
    });
});
</script>
<script type="text/javascript">
//下拉框交换JQuery
$(function(){
    //移到右边
    $('#addthree').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select6 option:selected').appendTo('#select4');
    });
    //移到左边
    $('#removethree').click(function() {
        $('#select4 option:selected').appendTo('#select6');
    });
    //全部移到右边
    $('#add_allthree').click(function() {
        //获取全部的选项,删除并追加给对方
        $('#select6 option').appendTo('#select4');
    });
    //全部移到左边
    $('#remove_allthree').click(function() {
        $('#select4 option').appendTo('#select6');
    });
    //双击选项
    $('#select6').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select4'); //追加给对方
    });
    //双击选项
    $('#select4').dblclick(function(){
       $("option:selected",this).appendTo('#select6');
    });
});
</script>
<script type="text/javascript">
//下拉框交换JQuery
$(function(){
    //移到右边
    $('#addthree').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select6 option:selected').appendTo('#select4');
    });
    //移到左边
    $('#removethree').click(function() {
        $('#select4 option:selected').appendTo('#select6');
    });
    //全部移到右边
    $('#add_allthree').click(function() {
        //获取全部的选项,删除并追加给对方
        $('#select6 option').appendTo('#select4');
    });
    //全部移到左边
    $('#remove_allthree').click(function() {
        $('#select4 option').appendTo('#select6');
    });
    //双击选项
    $('#select6').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select4'); //追加给对方
    });
    //双击选项
    $('#select4').dblclick(function(){
       $("option:selected",this).appendTo('#select6');
    });
});
</script>
<script type="text/javascript">
//下拉框交换JQuery
$(function(){
    //移到右边
    $('#addfive').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select7 option:selected').appendTo('#select8');
    });
    //移到左边
    $('#removefive').click(function() {
        $('#select8 option:selected').appendTo('#select7');
    });
    //全部移到右边
    $('#add_allfive').click(function() {
        //获取全部的选项,删除并追加给对方
        $('#select7 option').appendTo('#select8');
    });
    //全部移到左边
    $('#remove_allfive').click(function() {
        $('#select8 option').appendTo('#select7');
    });
    //双击选项
    $('#select7').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select8'); //追加给对方
    });
    //双击选项
    $('#select8').dblclick(function(){
       $("option:selected",this).appendTo('#select7');
    });
});
</script>

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
		<form class="form-horizontal" action="Add2Experiments" method="post">
		
            <div>
            <br>
                 <p style="font-size:17px;">&nbsp;&nbsp;第二步：筛选学校并指定限制实验、前置实验</p>
                <hr class="hrhr" />
                <p style="font-size:16px;font-family:微软雅黑;"> &emsp;&emsp;&emsp;&emsp;<small>此步骤您需要指定此实验的前置实验、限制实验和实验学校。</small></b>
                        <hr class="hrhr"/>
            </div>
            <div>
                
                    <h3></h3>
                                   
                   <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:left"><p style="font-size:17px;">&nbsp;&nbsp;选择学校:</p></label>
                        <div class="col-sm-9">     
                        <br>                      
                            <div>                                        
                                       
                            </div><br>
                            <div>
                                    <button class="btn btn-default" type="button">所有学校</button>
                            </div><br>                      
                            <div class="col-sm-5" id="div3">
                            <p style="font-size:16px;font-family:微软雅黑;">可选</p>
                           <select multiple="multiple" style="width:275px;font-size:16px" id="select7" class="selectpicker"  size="15">
                                   
                                   <c:forEach items="${sessionScope.allUniversity}" var="allUniversity">
										<option onmouseover="f1(this);" onmouseout="f2(this);" value ="${allUniversity.university}">${allUniversity.university}</option> 				
									</c:forEach>
                                </select>
                                
                            </div>
                            <div class="col-sm-5" style="display:none;" id="div4">
                             <p style="font-size:16px;font-family:微软雅黑;">可选</p>
                            <select multiple="multiple" style="width:275px;font-size:16px" id="select6" class="form-control"  size="15">
                                  
                                    
										<option value =""></option> 				
								
                                </select>
                               
                            </div>
                                <div class="col-sm-2" id="div7">
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                    <span id="addfive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">"/>
                                        </span><br />
                                        <br>
                                        <span id="add_allfive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">>"/>
                                        </span> <br />
                                        <br>
                                        <span id="removefive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<"/>
                                        </span><br />
                                        <br>
                                        <span id="remove_allfive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<<"/>
                                        </span>
                                </div>
                                <div class="col-sm-2" style="display:none;" id="div8">
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                    <span id="addfive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">"/>
                                        </span><br />
                                        <br>
                                        <span id="add_allfive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">>"/>
                                        </span> <br />
                                        <br>
                                        <span id="removefive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<"/>
                                        </span><br />
                                        <br>
                                        <span id="remove_allfive">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<<"/>
                                        </span>
                                </div>
                                <div class="col-sm-5" id="div11">
                                <p style="font-size:16px;font-family:微软雅黑;">已选</p>
                                <select multiple="multiple" style="width:275px;font-size:16px" id="select8" class="form-control" name="university" size="15">
                                </select>
                                
                                </div><br>
                        </div>                   
                    </div>       
                       <hr class="hrhr" />           
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:left"><p style="font-size:17px;">&nbsp;&nbsp;前置实验:</p></label>
                        <div class="col-sm-9">                           
                            <div class="radio">
                            <br>
                            			<label>
                                            
                                            <input type="radio" name="frontcate" id="optionsRadios2" value="无前置实验" checked ">
                                        <p style="font-size:15px;font-family:微软雅黑;">无前置实验</p>
                                        </label>
                                        <label>
                                            
                                            <input type="radio" name="frontcate" id="optionsRadios2" value="全部" ">
                                        <p style="font-size:15px;font-family:微软雅黑;">全部</p>
                                        </label>
                                        <label>
                                            <input type="radio" name="frontcate" id="optionsRadios2" value="任一">
                                        <p style="font-size:15px;font-family:微软雅黑;">任一</p>
                                        </label>
                            </div><br>
                            <div>
                                    <button class="btn btn-default" type="button" onClick="return myexperiment1()">我的实验</button> 
                                    <button class="btn btn-default" type="button" onClick="return allexperiment1()">全部实验</button> 
                            </div><br>
                                         
                            <div class="col-sm-5" id="div1">
                            <p style="font-size:16px;font-family:微软雅黑;">可选</p>
                            <select multiple="multiple" style="width:275px;font-size:16px" id="select1" class="form-control"  size="15">
                                  
                                   <c:forEach items="${sessionScope.listteacherexperiment}" var="listteacherexperiments1">
										<option onmouseover="f1(this);" onmouseout="f2(this);" value ="${listteacherexperiments1.id}">${listteacherexperiments1.getName()}</option> 				
									</c:forEach>
                                </select>
                                
                                </div>
                                
                            <div class="col-sm-5" style="display:none;" id="div2">
                             <p style="font-size:16px;font-family:微软雅黑;">可选</p>
                            <select multiple="multiple" style="width:275px;font-size:16px" id="select5" class="form-control"  size="15">
                                   
                                   
													
									
                                </select>
                               
                            </div>
                                <div class="col-sm-2" id="div5">
                                <br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                        <span id="addone">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">"/>
                                        </span><br />
                                        <br>
                                        <span id="add_alloneone">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">>"/>
                                        </span> <br />
                                        <br>
                                        <span id="removeone">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<"/>
                                        </span><br />
                                        <br>
                                        <span id="remove_alloneone">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<<"/>
                                        </span>
                                </div>
                                <div class="col-sm-2" style="display:none;" id="div6">
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                        <span id="addones">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">"/>
                                        </span><br />
                                        <br>
                                        <span id="add_alloneones">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">>"/>
                                        </span> <br />
                                        <br>
                                        <span id="removeones">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<"/>
                                        </span><br />
                                        <br>
                                        <span id="remove_alloneones">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<<"/>
                                        </span>
                                </div>
                                <div class="col-sm-5" id="div9">
                                <p style="font-size:16px;font-family:微软雅黑;">已选</p>
                                <select multiple="multiple" style="width:275px;font-size:16px" id="select2" class="form-control" name="front" size="15">
                                </select>
                                
                                </div><br>
                        </div>                   
                    </div>
                   <br>
                    <hr class="hrhr" />  
                   <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label " style="text-align:left"><p style="font-size:17px;">&nbsp;&nbsp;限制实验:</p></label>
                        <div class="col-sm-9">     
                        <br>                      
                            <div>                                        
                                       
                            </div><br>
                            <div>
                                    <button class="btn btn-default" type="button" onClick="return myexperiment2()">我的实验</button> 
                                    <button class="btn btn-default" type="button" onClick="return allexperiment2()">全部实验</button> 
                            </div><br>                      
                            <div class="col-sm-5" id="div3">
                            <p style="font-size:16px;font-family:微软雅黑;">可选</p>
                           <select multiple="multiple" style="width:275px;font-size:16px" id="select3" class="selectpicker"  size="15">
                                   
                                   <c:forEach items="${sessionScope.listteacherexperiment}" var="listteacherexperiments1">
										<option onmouseover="f1(this);" onmouseout="f2(this);" value ="${listteacherexperiments1.id}">${listteacherexperiments1.getName()}</option> 				
									</c:forEach>
                                </select>
                                
                            </div>
                            
                            <div class="col-sm-5" style="display:none;" id="div4">
                             <p style="font-size:16px;font-family:微软雅黑;">可选</p>
                            <select multiple="multiple" style="width:275px;font-size:16px" id="select6" class="form-control"  size="15">
                                  
                                    
										<option value =""></option> 				
								
                                </select>
                               
                            </div>
                                <div class="col-sm-2" id="div7">
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                    <span id="addtwo">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">"/>
                                        </span><br />
                                        <br>
                                        <span id="add_alltwo">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">>"/>
                                        </span> <br />
                                        <br>
                                        <span id="removetwo">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<"/>
                                        </span><br />
                                        <br>
                                        <span id="remove_alltwo">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<<"/>
                                        </span>
                                </div>
                                <div class="col-sm-2" style="display:none;" id="div8">
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                		<br>
                                    <span id="addtwos">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">"/>
                                        </span><br />
                                        <br>
                                        <span id="add_alltwos">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value=">>"/>
                                        </span> <br />
                                        <br>
                                        <span id="removetwos">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<"/>
                                        </span><br />
                                        <br>
                                        <span id="remove_alltwos">
                                        <input type="button" style="width:60px;font-family:微软雅黑;" class="btn btn-default" value="<<"/>
                                        </span>
                                </div>
                                <div class="col-sm-5" id="div11">
                                <p style="font-size:16px;font-family:微软雅黑;">已选</p>
                                <select multiple="multiple" style="width:275px;font-size:16px" id="select4" class="form-control" name="limit" size="15">
                                </select>
                                
                                </div><br>
                        </div>                   
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label " style="text-align:left"><h3></h3></label>
                    
                    </div>                  
                   
                    <div class="form-group">
                        <div class="col-sm-offset-5 col-sm-7">
                       
                        <button type="submit" onclick="return sendForm()" class="btn btn-primary" >继续<span class="glyphicon glyphicon-chevron-right"></span></button>
                        </div>
                    </div>
                </form> 
            </div>
		</div>
	</div>


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
    
    <!--script for this page-->
    <script src='js/page/main.aspx.js'></script>
<script>
function allexperiment1(){
	$.ajax({
		   url:'ListAllExperiments',// 跳转到 action 
		    type:'post',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	var jsonObj=eval(data.listallexperiment);
		    	$("#select1 option").remove();
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		$("#select1").append("<option onmouseover='f1(this);' onmouseout='f2(this);' value="+ item.id+">"+ item.name+"</option>"); 
		    		}); 
		     }
		   
	});
	
	return true;
};

function myexperiment1(){
	$.ajax({
		   url:'ListTeacherExperiments1',// 跳转到 action 
		    type:'post',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	var jsonObj=eval(data.listteacherexperiments1);
		    	$("#select1 option").remove();
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		$("#select1").append("<option onmouseover='f1(this);' onmouseout='f2(this);' value="+ item.id+">"+ item.name+"</option>"); 
		    		}); 
		     }
		   
	});
	return true;
};

function allexperiment2(){
	$.ajax({
		   url:'ListAllExperiments',// 跳转到 action 
		    type:'past',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	var jsonObj=eval(data.listallexperiment);
		    	$("#select3 option").remove();
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		$("#select3").append("<option onmouseover='f1(this);' onmouseout='f2(this);' value="+ item.id+">"+ item.name+"</option>"); 
		    		}); 
		     }
		   
	});
	
	return true;
};

function myexperiment2(){
	$.ajax({
		   url:'ListTeacherExperiments1',// 跳转到 action 
		    type:'post',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	var jsonObj=eval(data.listteacherexperiments1);
		    	$("#select3 option").remove();
		    	$.each(jsonObj, function (i, item) { 
		    		
		    		$("#select3").append("<option onmouseover='f1(this);' onmouseout='f2(this);' value="+ item.id+">"+ item.name+"</option>"); 
		    		}); 
		     }
		   
	});
	return true;
};

function f1(obj){  
    $(obj).css('background-color','grey');
    $(obj).css('color','white');
}  
function f2(obj){  
	$(obj).css('background-color','white'); 
	$(obj).css('color','#000000');
}

function sendForm(){
	var limit=new Array();
	var front=new Array();
	var university=new Array();
	var frontcate=$('input:radio:checked').val();
	console.log(frontcate);
	$('#select4 option').each(function(){
		var l =$(this).val();
		limit.push(l)
	});
	$('#select2 option').each(function(){
		var f =$(this).val();
		front.push(f)
	});
	$('#select8 option').each(function(){
		var u =$(this).val();
		university.push(u)
	});
	$.ajax({
		   url:'Add2Experiments',// 跳转到 action 
		   data:{
			   limit:limit,front:front,frontcate:frontcate,university:university
		   },
		    type:'post',  
		    cache:false,  
		    dataType:'json',  
		    success:function(data) { 
		    	window.location='addexperiment3'
		     }
		   
	});
	return false;
}
</script>


</body>
</html> 