package org.apache.jsp.WebContent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<title>HomeState</title>\n");
      out.write("\t<meta charset=\"UTF-8\"/>\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"../resources/Login/images/icons/favicon.ico\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/vendor/bootstrap/css/bootstrap.min.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/fonts/iconic/css/material-design-iconic-font.min.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/vendor/animate/animate.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/vendor/css-hamburgers/hamburgers.min.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/vendor/animsition/css/animsition.min.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/vendor/select2/select2.min.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/vendor/daterangepicker/daterangepicker.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/css/util.css\"/>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../resources/Login/css/main.css\"/>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<div class=\"limiter\">\n");
      out.write("\t\t<div class=\"container-login100\" style=\"background-image: url('../Upload/building3.jpg');\">\n");
      out.write("\t\t\t<div class=\"wrap-login100\" style=\"height: 500px; \">\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\" action=\"../RegisterUserLoginServlet\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title p-b-34 p-t-27\">\n");
      out.write("\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Enter username\">\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"text\" name=\"UserName\" placeholder=\"Username\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\" data-placeholder=\"&#xf207;\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate=\"Enter password\">\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"Password\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\" data-placeholder=\"&#xf191;\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\" name=\"login\">\n");
      out.write("\t\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                        \n");
      out.write("                                        <div class=\"text-center p-t-90\">\n");
      out.write("                                            <a class=\"txt1\" href=\"Registration.jsp\">\n");
      out.write("                                                        Sign Up\n");
      out.write("                                            </a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t<div id=\"dropDownSelect1\"></div>\n");
      out.write("\t\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../resources/Login/vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/animsition/js/animsition.min.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/select2/select2.min.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/daterangepicker/moment.min.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/daterangepicker/daterangepicker.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/vendor/countdowntime/countdowntime.js\"></script>\n");
      out.write("\t<script src=\"../resources/Login/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
