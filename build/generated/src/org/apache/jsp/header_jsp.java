package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("    <div class=\"container\">\n");
      out.write("      <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\">Srujan Oza</a>\n");
      out.write("      <button class=\"navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        Menu\n");
      out.write("        <i class=\"fas fa-bars\"></i>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("        <ul class=\"navbar-nav ml-auto\">\n");
      out.write("          <li class=\"nav-item mx-0 mx-lg-1\">\n");
      out.write("            <a class=\"nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger\" href=\"#\">Profile</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item mx-0 mx-lg-1\">\n");
      out.write("      <div class=\"dropdown\">\n");
      out.write("  <button class=\"dropbtn\">Assignments</button>\n");
      out.write("  <div class=\"dropdown-content\">\n");
      out.write("       <a href=\"loginpage.html\">Assignment-1</a>\n");
      out.write("       <a href=\"tablefile.html\">Assignment-2</a>\n");
      out.write("      <a href=\"signupform.html\">Assignment-3</a>\n");
      out.write("   \n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("  </li>\n");
      out.write("          <li class=\"nav-item mx-0 mx-lg-1\">\n");
      out.write("            <a class=\"nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger\" href=\"#contact\">170470107040</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  ");
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
