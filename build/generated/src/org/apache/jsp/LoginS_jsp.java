package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LoginS_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("    font-family: \"Lato\", sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".main-head{\n");
      out.write("    height: 150px;\n");
      out.write("    background: #FFF;\n");
      out.write("   \n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav {\n");
      out.write("    height: 100%;\n");
      out.write("    background-color: #000;\n");
      out.write("    overflow-x: hidden;\n");
      out.write("    padding-top: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".main {\n");
      out.write("    padding: 0px 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-height: 450px) {\n");
      out.write("    .sidenav {padding-top: 15px;}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-width: 450px) {\n");
      out.write("    .login-form{\n");
      out.write("        margin-top: 10%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .register-form{\n");
      out.write("        margin-top: 10%;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (min-width: 768px){\n");
      out.write("    .main{\n");
      out.write("        margin-left: 40%; \n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .sidenav{\n");
      out.write("        width: 40%;\n");
      out.write("        position: fixed;\n");
      out.write("        z-index: 1;\n");
      out.write("        top: 0;\n");
      out.write("        left: 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .login-form{\n");
      out.write("        margin-top: 80%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .register-form{\n");
      out.write("        margin-top: 20%;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".login-main-text{\n");
      out.write("    margin-top: 20%;\n");
      out.write("    padding: 60px;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login-main-text h2{\n");
      out.write("    font-weight: 300;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn-black{\n");
      out.write("    background-color: #000 !important;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("         <div class=\"login-main-text\">\n");
      out.write("            <h2>Cloud<br> Login Page</h2>\n");
      out.write("            <p>Login or register from here to access.</p>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"main\">\n");
      out.write("         <div class=\"col-md-6 col-sm-12\">\n");
      out.write("            <div class=\"login-form\">\n");
      out.write("                <form action=\"LoginSDB.jsp\" method=\"post\"> \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                     <label>User Name</label>\n");
      out.write("                     <input type=\"text\" class=\"form-control\" placeholder=\"User Name\" name=\"kk\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                     <label>Password</label>\n");
      out.write("                     <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"kk1\">\n");
      out.write("                  </div>\n");
      out.write("                  <button type=\"submit\" class=\"btn btn-black\">Login</button>\n");
      out.write("                  <button class=\"btn btn-black\"><a href=\"forgot1.jsp\">Forgot Password</a></button>\n");
      out.write("               </form>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("         jQuery(document).ready(function($) {\n");
      out.write("\n");
      out.write("      if (window.history && window.history.pushState) {\n");
      out.write("\n");
      out.write("        $(window).on('popstate', function() {\n");
      out.write("          var hashLocation = location.hash;\n");
      out.write("          var hashSplit = hashLocation.split(\"#!/\");\n");
      out.write("          var hashName = hashSplit[1];\n");
      out.write("\n");
      out.write("          if (hashName !== '') {\n");
      out.write("            var hash = window.location.hash;\n");
      out.write("            if (hash === '') {\n");
      out.write("              alert('Back button was pressed.');\n");
      out.write("                window.location='Index.html';\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        window.history.pushState('forward', null, './#forward');\n");
      out.write("      }\n");
      out.write("\n");
      out.write("    });\n");
      out.write("    </script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
