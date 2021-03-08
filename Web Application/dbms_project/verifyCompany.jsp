<%@ page import = "java.io.*"%>

<%

String name = request.getParameter("comname");
String pass = request.getParameter("compass");

if(name.equals("company") && pass.equals("c1234"))
{
	response.sendRedirect("users/company.html");
}

%>