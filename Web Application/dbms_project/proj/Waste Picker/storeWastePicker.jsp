<%@ page import = "java.sql.*"%>

<%

String wpid = request.getParameter("wid");
String wphn = request.getParameter("whn");
String wprn = request.getParameter("wrn");

try
{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	PreparedStatement ps = conn.prepareStatement("insert into Waste_Picker values(?, ?, ?)");
	ps.setString(1, wpid);
	ps.setString(2, wphn);
	ps.setString(3, wprn);

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