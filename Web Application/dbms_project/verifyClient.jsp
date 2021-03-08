<%@ page import = "java.io.*"%>

<%

String name = request.getParameter("clname");
String pass = request.getParameter("clpass");

if(name.equals("client") && pass.equals("c1234"))
{
	response.sendRedirect("users/client.html");
}

%>