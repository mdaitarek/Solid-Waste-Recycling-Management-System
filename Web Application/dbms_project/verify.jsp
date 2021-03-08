<%@ page import = "java.io.*"%>

<%

String name = request.getParameter("rname");
String pass = request.getParameter("rpass");

if(name.equals("group01") && pass.equals("1234"))
{
	response.sendRedirect("proj/tables.html");
}

%>