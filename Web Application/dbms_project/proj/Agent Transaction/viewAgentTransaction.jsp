<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("select *from AGENT_TRANSACTION");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>AGENT ID</th><th>TRANSACTION ID</th><th>TRANSACTION DATE</th></tr></center>";
	while(rs.next())
	{
		str += "<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>";
	}
	str += "</table>";
	out.println(str);
	conn.close();
}
catch(Exception e)
{
	out.print(e);
}
/*finally
{
	pw.close();
}*/

%>