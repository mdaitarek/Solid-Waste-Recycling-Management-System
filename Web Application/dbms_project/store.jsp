<%@ page import = "java.sql.*"%>

<%

String name = request.getParameter("rname");
String num = request.getParameter("rnum");
String mail = request.getParameter("rmail");

try
{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	PreparedStatement ps = conn.prepareStatement("insert into std values(?, ?, ?)");
	ps.setString(1, name);
	ps.setString(2, num);
	ps.setString(3, mail);

	int x = ps.executeUpdate();
	if(x != 0)
		out.print("Data inserted successfully");
	else
		out.print("Something went wrong");
}
catch(Exception e)
{
	out.print(e);
}

%>