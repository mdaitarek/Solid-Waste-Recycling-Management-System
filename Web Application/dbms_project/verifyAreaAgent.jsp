<%@ page import = "java.io.*"%>

<%

String name = request.getParameter("aname");
String pass = request.getParameter("apass");

if(name.equals("agent") && pass.equals("a1234"))
{
	response.sendRedirect("users/areaAgent.html");
}

%>