<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>
	所有实验
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
	<li  class="active"><a href="ListAllExperiments4"><span style="color:white;">所有实验</span></a></li>
	<li><a href="Adminteachersinfo">教师信息</a></li>
	<li><a href="Adminstudentsinfo">学生信息</a></li>
	<li><a href="return_Exitmain">退出登录&nbsp;<span class="glyphicon glyphicon-log-out"></span></a></li>
</ul>

</div>

 </div> 
                           <c:if test="${sessionScope.admins_name!=null}">
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
                <li role="presentation" class="active" style="font-size: 14px"><a href="#all" role="tab" data-toggle="tab" >全部实验</a></li>
                
                <li role="presentation" style="font-size: 14px" ><a href="#active" role="tab" data-toggle="tab" onClick="return activeexperiment()">有效实验</a></li>
                <li role="presentation" style="font-size: 14px"><a href="#inactive" role="tab" data-toggle="tab" onClick="return unactiveexperiment()">过期实验</a></li>
            </ul>
            <br> 

            <br>
            <div class="tab-content">
                <!--下面的三个Table分别对应ALL、Active、Inactive三个不同的按钮，非重复、不可删除 -->
                <div role="tabpanel" class="tab-pane active" id="all">
                    <table class="table table-hover table-striped table-bordered" id="table1">
				        <thead>
					         <tr>
						      <th style= "text-align:center;">
						      <input type="hidden" id="pageCount1" value="${sessionScope.pagesize1}"/>
							     实验名称
						      </th>
                              <th style= "text-align:center;">
							     实验时间
						      </th>
						      <th style= "text-align:center;">
							     实验状态
						      </th>
						      <th style= "text-align:center;">
							     查看
						      </th>
					       </tr>
				        </thead>
				        <tbody>
				        <c:forEach items="${sessionScope.listallexperiment1}" var="listallexperiment1">		
					       <tr id="tr1">
					       <c:if test="${listallexperiment1.cate=='现场现金实验'}">
						      <td style= "text-align:center;">
							     <a target="_blank" href="ListOneExperiments4?id=${listallexperiment1.id}" id="a1"><span id="span1">${listallexperiment1.name}</span></a><br>
                                 <i>（<span id="span5">${listallexperiment1.pay}</span>  <span id="span6">¥</span>）</i>
						      </td>
						    </c:if>
						     <c:if test="${listallexperiment1.cate=='现场学分实验'}">
						      <td style= "text-align:center;">
							     <a target="_blank" href="ListOneExperiments4?id=${listallexperiment1.id}" id="a1"><span id="span1">${listallexperiment1.name}</span></a><br>
                                 <i>（<span id="span5">${listallexperiment1.credit}</span>  <span id="span6">学分</span>）</i>
						      </td>
						    </c:if>
						     <c:if test="${listallexperiment1.cate=='在线实验'}">
						      <td style= "text-align:center;">
							     <a target="_blank" href="ListOneExperiments4?id=${listallexperiment1.id}" id="a1"><span id="span1">${listallexperiment1.name}</span></a><br>
                                 <i>（<span id="span5">在线实验</span>  ）</i>
						      </td>
						    </c:if>
                               <td style= "text-align:center;">
                                 <span id="span2">${listallexperiment1.starttime}</span>/<span id="span3">${listallexperiment1.endtime}</span>
						      </td>
						      <td style= "text-align:center;">
							     <span class="glyphicon glyphicon-ok"><span id="span4">${listallexperiment1.state}</span></span>
						      </td>
						      <td style= "text-align:center;">
							     <a target="_blank" href="ListOneExperiments4?id=${listallexperiment1.id}" id="a2">实验信息</a><br>
						      </td>
					       </tr>
					    </c:forEach>
				        </tbody>
			         </table>
			         <br>
			         <div class="tcdPageCode1" style="float: right"></div>
                </div>
               
                <div role="tabpanel" class="tab-pane " id="active">
			         <table class=" table-hover table table-striped table-bordered" id="table2">
				        <thead>
					       <tr>
						      <th style= "text-align:center;">
						      <input type="hidden" id="pageCount2" value="${sessionScope.pagesize2}"/>
							     实验名称
						      </th>
                              <th style= "text-align:center;">
							     实验时间
						      </th>
						      <th style= "text-align:center;">
							    实验状态
						      </th>
						      <th style= "text-align:center;">
							     查看
						      </th>
					       </tr>
				        </thead>
				        <tbody>

				        </tbody>
			         </table>
			         <br>
			         <div class="tcdPageCode2" style="float: right"></div>
                 </div>
                 <div role="tabpanel" class="tab-pane" id="inactive">
                     <table class="table table-hover table-striped table-bordered" id="table3">
				        <thead>
				       
					       <tr >
						      <th style= "text-align:center;">
						      <input type="hidden" id="pageCount3" value="${sessionScope.pagesize3}"/>
							     实验名称
						      </th>
                               <th style= "text-align:center;">
							     实验时间
						      </th>
						      <th style= "text-align:center;">
							     实验状态
						      </th>
						      <th style= "text-align:center;">
							     查看
						      </th>
					       </tr>
					   
				        </thead>
				        <tbody>
				         
					    
				        </tbody>
			         </table>
			         <br>
			         <div class="tcdPageCode3" style="float: right"></div>
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
    
<script>



function activeexperiment(){
	
	$.ajax({
		   url:'ListActiveExperiments',// 跳转到 action  
		   data:{   
		    }, 
		    type:'post',  
		    cache:false,   
		    dataType:'json',  
		    success:function(data) { 
		    	$("#table2 tbody").remove();
		    	var jsonObj=eval(data.listactiveexperiments);
		    	if(jsonObj[0]==null){
		    		 
		    		 alert("无有效实验！");
		    	}
		    	else{
		    		var $tab1 = $("#table2");
		    		$.each(jsonObj, function (index, item) { 
		    			 var $tr = $('<tr>');
		    			
		    		        var starttime=item.starttime;
				    		var endtime=item.endtime;
				    		starttime = starttime.split('T');
				    		endtime = endtime.split('T')
				    		var cate=item.cate;
				    		if(cate=="现场学分实验"){
 				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.credit+"</span>  <span>学分</span>）</i></td>");
 				    		}
 				    		else if(cate=="现场现金实验"){
 				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.pay+"</span>  <span>¥</span>）</i></td>");
 				    		}
 				    		else{
 				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>在线实验</span>）</i></td>");
 				    		}
				    		
				    		$tr.append("<td style= 'text-align:center;'><span >"+starttime+"</span>/<span>"+endtime+"</span></td>");
				    		$tr.append("<td style= 'text-align:center;'><span class='glyphicon glyphicon-ok'><span>"+item.state+"</span></span></td>");
				    		$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"' >实验信息</a><br></td>");
		    			 	$tab1.append($tr);
			    		
			    		
			    	})
			    		}; 
			     }
		   
	});
	return true;
}

function unactiveexperiment(){
	$.ajax({
		   url:'ListUnactiveExperiments',// 跳转到 action  
		   data:{   
		    }, 
		    type:'post',  
		    cache:false,   
		    dataType:'json',  
		    success:function(data) { 
		    	$("#table3 tbody").remove();
		    	var jsonObj=eval(data.listunactiveexperiments);
		    	if(jsonObj==null){
		    		
		    		 alert("无过期实验！");
		    	}
		    	else{
		    		var $tab1 = $("#table3");
		    		$.each(jsonObj, function (index, item) { 
		    			 var $tr = $('<tr>');
		    			
		    		        var starttime=item.starttime;
				    		var endtime=item.endtime;
				    		starttime = starttime.split('T');
				    		endtime = endtime.split('T')
				    		var cate=item.cate;
				    		if(cate=="现场学分实验"){
 				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.credit+"</span>  <span>学分</span>）</i></td>");
 				    		}
 				    		else if(cate=="现场现金实验"){
 				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.pay+"</span>  <span>¥</span>）</i></td>");
 				    		}
 				    		else{
 				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>在线实验</span>）</i></td>");
 				    		}
				    		
				    		$tr.append("<td style= 'text-align:center;'><span >"+starttime+"</span>/<span>"+endtime+"</span></td>");
				    		$tr.append("<td style= 'text-align:center;'><span class='glyphicon glyphicon-ok'><span>"+item.state+"</span></span></td>");
				    		$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"' >实验信息</a><br></td>");
		    			 	$tab1.append($tr);
			    		
			    		
			    	})
			    		}; 
			     }
		   
	});
	return true;
}
</script>
<script src="btn/jquery-1.8.3.min.js"></script>
<script src="btn/jquery.page.js"></script>
<script>
    $(".tcdPageCode1").createPage({
        pageCount:$("#pageCount1").val(),
        current:1,
        backFn:function(p){
        	$.ajax({
     		   url:'ListAllExperiments1',// 跳转到 action  
     		   data:{  current:p  
     		    }, 
     		    type:'post',  
     		    cache:false,   
     		    dataType:'json',  
     		    success:function(data) { 
     		    	$("#table1 tbody").remove();
     		    	var jsonObj=eval(data.listallexperiment);
     		    	if(jsonObj==null){
     		    		
     		    		 alert("无实验！");
     		    	}
     		    	else{
     		    		var $tab1 = $("#table1");
     		    		$.each(jsonObj, function (index, item) { 
     		    			 var $tr = $('<tr>');
     		    			
     		    		        var starttime=item.starttime;
     				    		var endtime=item.endtime;
     				    		starttime = starttime.split('T00:00:00');
     				    		endtime = endtime.split('T00:00:00')
     				    		var cate=item.cate;
     				    		if(cate=="现场学分实验"){
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.credit+"</span>  <span>学分</span>）</i></td>");
     				    		}
     				    		else if(cate=="现场现金实验"){
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.pay+"</span>  <span>¥</span>）</i></td>");
     				    		}
     				    		else{
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>在线实验</span>）</i></td>");
     				    		}
     				    		
     				    		$tr.append("<td style= 'text-align:center;'><span >"+starttime+"</span>/<span>"+endtime+"</span></td>");
     				    		$tr.append("<td style= 'text-align:center;'><span class='glyphicon glyphicon-ok'><span>"+item.state+"</span></span></td>");
     				    		$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"' >实验信息</a><br></td>");
     		    			 	$tab1.append($tr);
     			    		
     			    		
     			    	})
     			    		}; 
     			     }
     		   
     	});
        }
    });
    
    $(".tcdPageCode2").createPage({
        pageCount:$("#pageCount2").val(),
        current:1,
        backFn:function(p){
        	$.ajax({
     		   url:'ListActiveExperiments1',// 跳转到 action  
     		   data:{   current:p 
     		    }, 
     		    type:'post',  
     		    cache:false,   
     		    dataType:'json',  
     		    success:function(data) { 
     		    	$("#table2 tbody").remove();
     		    	var jsonObj=eval(data.listactiveexperiments);
     		    	if(jsonObj==null){
     		    		 
     		    		 alert("无有效实验！");
     		    	}
     		    	else{
     		    		var $tab1 = $("#table2");
     		    		$.each(jsonObj, function (index, item) { 
     		    			 var $tr = $('<tr>');
     		    			
     		    		        var starttime=item.starttime;
     				    		var endtime=item.endtime;
     				    		starttime = starttime.split('T00:00:00');
     				    		endtime = endtime.split('T00:00:00')
     				    		var cate=item.cate;
     				    		if(cate=="现场学分实验"){
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.credit+"</span>  <span>学分</span>）</i></td>");
     				    		}
     				    		else if(cate=="现场现金实验"){
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.pay+"</span>  <span>¥</span>）</i></td>");
     				    		}
     				    		else{
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>在线实验</span>）</i></td>");
     				    		}
     				    		
     				    		$tr.append("<td style= 'text-align:center;'><span >"+starttime+"</span>/<span>"+endtime+"</span></td>");
     				    		$tr.append("<td style= 'text-align:center;'><span class='glyphicon glyphicon-ok'><span>"+item.state+"</span></span></td>");
     				    		$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"' >实验信息</a><br></td>");
     		    			 	$tab1.append($tr);
     			    		
     			    		
     			    	})
     			    		}; 
     			     }
     		   
     	});
        }
    });
    
    $(".tcdPageCode3").createPage({
        pageCount:$("#pageCount3").val(),
        current:1,
        backFn:function(p){
        	$.ajax({
     		   url:'ListUnactiveExperiments1',// 跳转到 action  
     		   data:{  current:p  
     		    }, 
     		    type:'post',  
     		    cache:false,   
     		    dataType:'json',  
     		    success:function(data) { 
     		    	$("#table3 tbody").remove();
     		    	var jsonObj=eval(data.listunactiveexperiments);
     		    	if(jsonObj==null){
     		    		
     		    		 alert("无过期实验！");
     		    	}
     		    	else{
     		    		var $tab1 = $("#table3");
     		    		$.each(jsonObj, function (index, item) { 
     		    			 var $tr = $('<tr>');
     		    			
     		    		        var starttime=item.starttime;
     				    		var endtime=item.endtime;
     				    		starttime = starttime.split('T00:00:00');
     				    		endtime = endtime.split('T00:00:00')
     				    		var cate=item.cate;
     				    		if(cate=="现场学分实验"){
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.credit+"</span>  <span>学分</span>）</i></td>");
     				    		}
     				    		else if(cate=="现场现金实验"){
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>"+item.pay+"</span>  <span>¥</span>）</i></td>");
     				    		}
     				    		else{
     				    			$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"'><span >"+item.name+"</span></a><br><i>（<span>在线实验</span>）</i></td>");
     				    		}
     				    		
     				    		$tr.append("<td style= 'text-align:center;'><span >"+starttime+"</span>/<span>"+endtime+"</span></td>");
     				    		$tr.append("<td style= 'text-align:center;'><span class='glyphicon glyphicon-ok'><span>"+item.state+"</span></span></td>");
     				    		$tr.append("<td style= 'text-align:center;'><a target='_blank' href='ListOneExperiments4?id="+item.id+"' >实验信息</a><br></td>");
     		    			 	$tab1.append($tr);
     			    		
     			    		
     			    	})
     			    		}; 
     			     }
     		   
     	});
        }
    });
</script>
</body>
</html>