/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2017-08-02 01:41:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/Administrator/Desktop/gradle-2.11/caches/modules-2/files-2.1/org.apache.struts/struts2-core/2.5.1/4d896f8f509990d9da198423e56c36de0d1c03b6/struts2-core-2.5.1.jar!/META-INF/struts-tags.tld", Long.valueOf(1465862998000L));
    _jspx_dependants.put("/WEB-INF/lib/struts2-core-2.5.1.jar", Long.valueOf(1469095100352L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>\n");
      out.write("\t\t市场营销系实验管理系统\n");
      out.write("\t</title>\n");
      out.write("\t<meta http-equiv=\"Pragma\" content=\"no-cache\" />\n");
      out.write("    <meta http-equiv=\"Cache-Control\" content=\"no-cache\" />\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <link rel=\"shortcut icon\" href=\"custom/favicon.ico\"/>\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        \n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("        \n");
      out.write("        <link href=\"css/bootstrap-reset.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/typeaheadjs.css\" rel=\"stylesheet\" />\n");
      out.write("     \n");
      out.write("\n");
      out.write("        <!--external css-->\n");
      out.write("        <link href=\"assets/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"assets/bootstrap-datepicker/Content/bootstrap-datepicker.css\" rel=\"stylesheet\" />\n");
      out.write("        \n");
      out.write("        <link href=\"assets/jquery-multi-select/css/multi-select.css\" rel=\"stylesheet\" />\n");
      out.write("        \n");
      out.write("    \n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        \n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/style-responsive.css\" rel=\"stylesheet\" />\n");
      out.write("        \n");
      out.write("        <link href=\"css/open-sans-font.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/task.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendor/bootstrap/css/bootstrap.css\"/>\n");
      out.write("    <script type=\"text/javascript\" src=\"vendor/jquery/jquery-1.10.2.min.js\"></script>\n");
      out.write("  \n");
      out.write("    <script type=\"text/javascript\" src=\"js/Ajax.js\"></script>    \n");
      out.write("    <!--common script for all pages-->\n");
      out.write("     \n");
      out.write("      <script type=\"text/javascript\" src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"dist/js/bootstrapValidator.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"dist/js/formValidation.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"dist/js/framework/bootstrap.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"dist/js/language/zh_CN.js\"></script>\n");
      out.write("    <script src=\"assets/bootstrap-accessibility-plugin/js/bootstrap-accessibility.min.js\"></script>\n");
      out.write("     <script src=\"assets/jquery-multi-select/js/jquery.multi-select-0.9.11.min.js\"></script>\n");
      out.write("    <script src=\"assets/jquery-knob/js/jquery.knob.1.2.8.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/typeahead.bundle-0.10.2.min.js\"></script>\n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery.pulsate.min.js\"></script>\n");
      out.write("        <script src=\"js/common-scripts.js\"></script>\n");
      out.write("    \n");
      out.write("     <link rel=\"stylesheet\" href=\"dist/css/bootstrapValidator.css\"/>  \n");
      out.write("        <style>\n");
      out.write("            /* Tagline and Background Image */\n");
      out.write("\n");
      out.write("            #logocontainer.panel-body {\n");
      out.write("        \t    margin:0 auto;\n");
      out.write("\t            vertical-align: middle;\n");
      out.write("\t            text-align: center;\n");
      out.write("\t            min-height: 140px !important;\n");
      out.write("\t            max-height: 140px !important;\n");
      out.write("\t            padding-top: 15px; /* EMS_UI_LOGO_PADDING */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #taglinebody {\n");
      out.write("        \t    vertical-align: middle;\n");
      out.write("\t            background: url(custom/schoolimage.png) no-repeat center center; /* EMS_UI_BACKGROUND_IMAGE? */\n");
      out.write("\t            min-height: 140px;\n");
      out.write("\t            background-position: 25% 40%;\n");
      out.write("\t            border-radius: 5px;\n");
      out.write("\t            padding: 0px;\t\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h3.taglinetext {\n");
      out.write("\t\t\t\topacity:0.9;\n");
      out.write("\t            font-size: 1.1em;\n");
      out.write("\t            width: 100%;\n");
      out.write("\t            letter-spacing: 1px;\n");
      out.write("\t            text-align: center;\n");
      out.write("\t            color: #FFFFFF; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("\t            background: #1C86EE; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("\t            margin: 56px auto !important;\n");
      out.write("\t            padding: 6px;\t\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ul.nav.navbar-nav.navbar-right.a {\n");
      out.write("\t            color:#4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a {\n");
      out.write("\t            color:#4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a:hover, a:focus {\n");
      out.write("\t            color:#2D194B !important; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a.navbar-brand, li.nav {\n");
      out.write("\t            color:#FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar-inverse .navbar-nav>li>a { /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("\t            color:#FFFFFF !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a.dropdown-toggle {\n");
      out.write("                color:#FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-menu > li {\n");
      out.write("\t            color:#FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {\n");
      out.write("\t            background-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("\t            color: #FFFFFF !important;\n");
      out.write("\t            text-decoration: none;\t\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a.list-group-item:hover {\n");
      out.write("                color: #2D194B !important; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar-inverse {\n");
      out.write("                background-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                border-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {\n");
      out.write("                background-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("                color: #FFFFFF; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:hover, .navbar-inverse .navbar-nav > .active > a:focus, .navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:focus{\n");
      out.write("                background-color: #2D194B !important; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .profile-nav .user-heading {\n");
      out.write("                background: #2D194B; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("                color: #FFFFFF; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("                border-radius: 4px 4px 0 0;\n");
      out.write("                -webkit-border-radius: 4px 4px 0 0;\n");
      out.write("                padding: 30px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .panel-heading .nav {\n");
      out.write("                border: medium none;\n");
      out.write("                font-size: 13px;\n");
      out.write("                background:#4E2C7E;  /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                border-radius: 5px;\n");
      out.write("                margin: -10px -15px -11px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .panel-heading .nav > li.active > a {\n");
      out.write("\t            color: #4E2C7E !important;  /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .panel-heading .nav > li.active > a, .panel-heading .nav > li > a:hover {\n");
      out.write("\t            color: #2D194B !important;  /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active a {\n");
      out.write("\t            background: #f8f7f5 !important;\n");
      out.write("\t            border-left: 5px solid #4E2C7E;   /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("\t            color: #303030 !important;  /* Black color used for all sites */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .site-footer {\n");
      out.write("\t            background:#1C86EE; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("\t            color: #FFFFFF;  /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-signin h2.form-signin-heading {\n");
      out.write("                margin: 0;\n");
      out.write("                padding:20px 15px;\n");
      out.write("                text-align: center;\n");
      out.write("\t            background:#1C86EE; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                border-radius: 5px 5px 0 0;\n");
      out.write("                -webkit-border-radius: 5px 5px 0 0;\n");
      out.write("                color: #fff;\n");
      out.write("                font-size: 24px;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                font-weight: 300;\n");
      out.write("                font-family: 'Open Sans', sans-serif; /* Open Sans for all, Font Style - Set by Google */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .task-thumb-details h1, .task-thumb-details h1 a, .task-progress h1, .task-progress h1 a {\n");
      out.write("                color: #4E2C7E; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                font-size: 24px;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                font-weight: 400;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn-primary {\n");
      out.write("\t            background-color:#4E2C7E; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                border-color: #4E2C7E; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("\t            color:#FFFFFF; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open .dropdown-toggle.btn-primary {\n");
      out.write("                background-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("                border-color: #2D194B; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("                color: #fff !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .activity.red span {\n");
      out.write("                background: #2D194B; /* EMS_UI_SECONDARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .ms-container .ms-selectable li.ms-hover, .ms-container .ms-selection li.ms-hover {\n");
      out.write("                background-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                color: #FFFFFF !important; /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("                cursor: pointer;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ::selection {\n");
      out.write("                background: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            ::-moz-selection {\n");
      out.write("                background: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .bio-desk h4.title2 {\n");
      out.write("            color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .label-primary {\n");
      out.write("\t            background-color: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .badge.bg-primary {\n");
      out.write("            background: #4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("        \n");
      out.write("            .text-center a {\n");
      out.write("\t            color:#FFFFFF !important;   /* EMS_UI_HEADLINE_COLOR */\n");
      out.write("\t            text-decoration: underline;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .modal-header {\n");
      out.write("                background:#4E2C7E !important; /* EMS_UI_PRIMARY_COLOR */\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!-- Get jQuery from the Microsoft CDN and fallback to the local copy, if not available -->\n");
      out.write("</head>\n");
      out.write("<body class=\"boxed-page\">\n");
      out.write(" \n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <section id=\"container\" class=\"\">\n");
      out.write("\n");
      out.write("            <!--main content start-->\n");
      out.write("            <section id=\"primary-content\">\n");
      out.write("                <section class=\" wrapper site-min-height\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-3\">\n");
      out.write("                            <!-- banner start -->\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-12\">\n");
      out.write("                                     <section class=\"panel\">\n");
      out.write("                                        <a href=\"http://sm.xmu.edu.cn/html/about/department/marketing/\" target=\"_blank\" id=\"ctl00_BannerLink\">\n");
      out.write("                                            <div id=\"logocontainer\" class=\"panel-body\">\n");
      out.write("                                                    <img id=\"SchoolImg\" title=\"厦门大学'\" src=\"custom/customlogo.png\" alt=\"厦门大学管理学院图标'\" style=\"border-width:0px;\" />\n");
      out.write("                                            </div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </section>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"col-lg-9\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-12\">\n");
      out.write("                                    <section class=\"panel\">\n");
      out.write("                                        <a id=\"ctl00_Banner2Link\">\n");
      out.write("                                            <div id=\"taglinebody\" class=\"panel-body\">\n");
      out.write("                                                    <h3 class=\"taglinetext\"><strong id=\"ctl00_DepartmentText\">市场学系</strong>&nbsp;<span id=\"ctl00_SiteNameText\">实验管理系统</span></h3>\n");
      out.write("                                            </div>\n");
      out.write("                                        </a>\n");
      out.write("                                    </section>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- banner end -->\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- START NOTIFICATIONS -->\n");
      out.write("                    \n");
      out.write("                    <!-- END NOTIFICATIONS -->\n");
      out.write("                    \n");
      out.write("                    <!-- page start-->\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-6\">\n");
      out.write("            <section class=\"panel\">\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <div class=\"form-signin\">\n");
      out.write("                        <h2 class=\"form-signin-heading\">实验管理系统</h2>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                         <form id=\"defaultForm\" name=\"aspnetForm\" method=\"post\" action=\"StudentsLogin\" >  \n");
      out.write("                        <div class=\"login-wrap\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                            <label>用户名</label>\n");
      out.write("                            <input name=\"students_id\" type=\"text\" maxlength=\"16\" size=\"25\" id=\"id\" class=\"form-control\" autofocus placeholder=\"请输您的学工号\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                            <label>密码</label>\n");
      out.write("                            <input name=\"password\" type=\"password\" maxlength=\"16\" size=\"25\" id=\"password\" class=\"form-control\" placeholder=\"请输入您的密码\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                    <div class=\"radio-inline\">\n");
      out.write("                                \t<label class=\"radio-inline\">\n");
      out.write("                                    <input type=\"radio\" name=\"1\" id=\"radio1\" checked/>教师\n");
      out.write("                                    </label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"radio-inline\">\n");
      out.write("                                    <label class=\"radio-inline\">\n");
      out.write("                                    <input type=\"radio\" name=\"1\" id=\"radio2\"/>学生\n");
      out.write("                                    </label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"radio-inline\">\n");
      out.write("                                    <label class=\"radio-inline\">\n");
      out.write("                                    <input type=\"radio\" name=\"1\" id=\"radio3\"/>管理员\t\n");
      out.write("                                    </label>\n");
      out.write("                                    </div>       \n");
      out.write("                            </div>\n");
      out.write("                            <input type=\"submit\" name=\"login\"  value=\"登录\" id=\"ctl00_ContentPlaceHolder1_default_auth_button\" class=\"btn btn-info btn-lg btn-block\"  onkeydown=\"return checkForm1()\" onClick=\"return checkForm()\"/>\n");
      out.write("                            \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-lg-6\">\n");
      out.write("            <section class=\"panel\">\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                     \n");
      out.write("\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                    \n");
      out.write("                        <strong></strong>\n");
      out.write("\t\t\t\t        <a class=\"btn btn-info btn-block\" href=\"getCollege\">学生注册</a>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("             <section class=\"panel\">\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                     \n");
      out.write("\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                    \n");
      out.write("                        <strong></strong>\n");
      out.write("\t\t\t\t        <a class=\"btn btn-info btn-block\" href=\"forgetpass\">忘记密码?</a>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- page end-->\n");
      out.write("\n");
      out.write("                </section>\n");
      out.write("            </section>\n");
      out.write("                \n");
      out.write("            <!--footer start-->\n");
      out.write("            <footer class=\"site-footer\">\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <address>\n");
      out.write("                        <span id=\"ctl00_TextPageFooterLabel\">Email questions to</span> <a id=\"ctl00_MailToHyperLink\" href=\"mailto:tomking15@qq.com\">tomking15@qq.com</a><br/>\n");
      out.write("                        Copyright &copy; <span id=\"ctl00_YearLabel\">2017</span>&nbsp;<a href=\"http://sm.cumt.edu.cn\" target=\"_blank\">SM.CUMT.Edu</a>\n");
      out.write("                    </address>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("            <!--footer end-->\n");
      out.write("        </section>\n");
      out.write("    </div>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("  var vr='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${requestScope.message}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("';\n");
      out.write("  if(vr!=''){\n");
      out.write("    confirm(vr);}\n");
      out.write("  else{\n");
      out.write("  \n");
      out.write("\t  }\n");
      out.write("  </script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\t//  alert(\" 输入值为空！\");\n");
      out.write("\t\t    $('#defaultForm').formValidation({\n");
      out.write("\t\t        err: {\n");
      out.write("\t\t            container: 'tooltip'\n");
      out.write("\t\t        },\n");
      out.write("\t\t//        trigger: 'blur',\n");
      out.write("\t\t        icon: {\n");
      out.write("\t\t            valid: 'glyphicon glyphicon-ok',\n");
      out.write("\t\t            invalid: 'glyphicon glyphicon-remove',\n");
      out.write("\t\t            validating: 'glyphicon glyphicon-refresh'\n");
      out.write("\t\t        },\n");
      out.write("\t\t        fields: {\n");
      out.write("\t\t        \t password: {\n");
      out.write("\t\t\t                validators: {\n");
      out.write("\t\t\t                    stringLength: {\n");
      out.write("\t                                min:6,\n");
      out.write("\t\t\t                        message: '密码至少为6位'\n");
      out.write("\t\t\t\t\t\t\t\t\t/* 根据实际情况设置 */\n");
      out.write("\t\t\t                    },\n");
      out.write("\t\t\t                    notEmpty: {\n");
      out.write("\t\t\t                        message: '密码不能为空'\n");
      out.write("\t\t\t                    },\n");
      out.write("\t\t\t                    regexp: {\n");
      out.write("\t\t\t                        enabled: true,\n");
      out.write("\t\t\t                        regexp: /^[a-z,0-9]+$/i,\n");
      out.write("\t\t\t                        message: '密码为数字与字母的组合'\n");
      out.write("\t\t\t                    }\n");
      out.write("\t\t\t                }\n");
      out.write("\t\t\t            },            \n");
      out.write("\t\t\t            id: {\n");
      out.write("\t\t\t                validators: {\n");
      out.write("\t\t\t                    stringLength: {\n");
      out.write("\t                                min:8,\n");
      out.write("\t\t\t                        message: '学工号至少为8位数字'\n");
      out.write("\t\t\t\t\t\t\t\t\t/* 根据实际情况设置 */\n");
      out.write("\t\t\t                    },\n");
      out.write("\t\t\t                    notEmpty: {\n");
      out.write("\t\t\t                        message: '学工号不能为空'\n");
      out.write("\t\t\t                    },\n");
      out.write("\t\t\t                    regexp: {\n");
      out.write("\t\t\t                        enabled: true,\n");
      out.write("\t\t\t                        regexp: /^[0-9]+$/i,\n");
      out.write("\t\t\t                        message: '请正确输入学工号'\n");
      out.write("\t\t\t                    }\n");
      out.write("\t\t\t            }\n");
      out.write("\t\t            },\n");
      out.write("\t\t        }\n");
      out.write("\t\t    });\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("\n");
      out.write("function checkForm(){\n");
      out.write("\t var val1=$('input:radio[id=\"radio1\"]:checked').val();\n");
      out.write("\t var val2=$('input:radio[id=\"radio2\"]:checked').val();\n");
      out.write("\t var val3=$('input:radio[id=\"radio3\"]:checked').val();\n");
      out.write("\tif(val1!=null){\n");
      out.write("\t\tvar teachers_id=$(\"#id\").val();\n");
      out.write("\t\tvar teachers_password=$(\"#password\").val();\n");
      out.write("\t\t$.ajax({\n");
      out.write("\t\t\t   url:'Check1_Check_TeachersLogin',// 跳转到 action  \n");
      out.write("\t\t\t   data:{  \n");
      out.write("\t\t\t\t   teachers1_id : teachers_id,password : teachers_password  \n");
      out.write("\t\t\t    }, \n");
      out.write("\t\t\t    type:'post',  \n");
      out.write("\t\t\t    cache:false,  \n");
      out.write("\t\t\t    dataType:'json',  \n");
      out.write("\t\t\t    success:function(data) { \n");
      out.write("\t\t\t    \tconsole.log(data);\n");
      out.write("\t\t\t    \tif(data.flag==false){\n");
      out.write("\t\t\t    \t\t alert(\"账号或密码错误,请重新输入!\");\n");
      out.write("\t\t\t    \t\t return false;\n");
      out.write("\t\t\t    \t}\n");
      out.write("\t\t\t    \telse{\n");
      out.write("\t\t\t    \t\t$(\"#defaultForm\").attr(\"action\", \"TeachersLogin\");\n");
      out.write("\t\t\t    \t\t$(\"#id\").attr(\"name\", \"teachers1_id\");\n");
      out.write("\t\t\t    \t\t$(\"#defaultForm\").submit();\n");
      out.write("\t\t\t\t    \treturn true;}\n");
      out.write("\t\t\t     }\n");
      out.write("\t\t\t   \n");
      out.write("\t\t});\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\telse if(val2!=null){\n");
      out.write("\t\t\n");
      out.write("\t\tvar students_id=$(\"#id\").val();\n");
      out.write("\t\n");
      out.write("\t\tvar students_password=$(\"#password\").val();\n");
      out.write("\t\t$.ajax({\n");
      out.write("\t\t\t   url:'Check_Check_StudentsLogin',// 跳转到 action  \n");
      out.write("\t\t\t   data:{  \n");
      out.write("\t\t\t\t   students_id : students_id,password : students_password  \n");
      out.write("\t\t\t    }, \n");
      out.write("\t\t\t    type:'post',  \n");
      out.write("\t\t\t    cache:false,  \n");
      out.write("\t\t\t    dataType:'json',  \n");
      out.write("\t\t\t    success:function(data) { \n");
      out.write("\t\t\t    \tconsole.log(data);\n");
      out.write("\t\t\t    \tif(data.flag==false){\n");
      out.write("\t\t\t    \t\t alert(\"账号或密码错误,请重新输入!\");\n");
      out.write("\t\t\t    \t\t \n");
      out.write("\t\t\t    \t\t return false;\n");
      out.write("\t\t\t    \t}\n");
      out.write("\t\t\t    \telse{\n");
      out.write("\t\t\t    \t\twindow.location = 'ListStudentsResent';\n");
      out.write("\t\t\t\t    \treturn true;}\n");
      out.write("\t\t\t     }\n");
      out.write("\t\t\t   \n");
      out.write("\t\t});\n");
      out.write("\t\treturn false;\n");
      out.write("\t\t\n");
      out.write("\t}\n");
      out.write("\telse{\n");
      out.write("\t\tvar admins_id=$(\"#id\").val();\n");
      out.write("\t\tvar admins_password=$(\"#password\").val();\n");
      out.write("\t\t$.ajax({\n");
      out.write("\t\t\t   url:'Check2_Check_AdminsLogin',// 跳转到 action  \n");
      out.write("\t\t\t   data:{  \n");
      out.write("\t\t\t\t   id : admins_id,password : admins_password  \n");
      out.write("\t\t\t    }, \n");
      out.write("\t\t\t    type:'post',  \n");
      out.write("\t\t\t    cache:false,  \n");
      out.write("\t\t\t    dataType:'json',  \n");
      out.write("\t\t\t    success:function(data) { \n");
      out.write("\t\t\t    \tconsole.log(data);\n");
      out.write("\t\t\t    \tif(data.flag==false){\n");
      out.write("\t\t\t    \t\t alert(\"账号或密码错误,请重新输入!\");\n");
      out.write("\t\t\t    \t\t return false;\n");
      out.write("\t\t\t    \t}\n");
      out.write("\t\t\t    \telse{\n");
      out.write("\t\t\t    \t\t$(\"#defaultForm\").attr(\"action\", \"AdminsLogin\");\n");
      out.write("\t\t\t    \t\t$(\"#id\").attr(\"name\", \"id\");\n");
      out.write("\t\t\t    \t\t$(\"#defaultForm\").submit();\n");
      out.write("\t\t\t\t    \treturn true;}\n");
      out.write("\t\t\t     }\n");
      out.write("\t\t\t   \n");
      out.write("\t\t});\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\treturn false\n");
      out.write("};\n");
      out.write("\n");
      out.write("\n");
      out.write("$(\"body\").keydown(function() {\n");
      out.write("    if (event.keyCode == \"13\") {//keyCode=13是回车键\n");
      out.write("    \tcheckForm();\n");
      out.write("    }\n");
      out.write("});    \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
