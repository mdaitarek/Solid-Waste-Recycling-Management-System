<%@ page import = "java.io.*"%>

<%

String name = request.getParameter("lname");
String pass = request.getParameter("lpass");

if(name.equals("dealer") && pass.equals("l1234"))
{
	response.sendRedirect("users/localDealer.html");
}

%>