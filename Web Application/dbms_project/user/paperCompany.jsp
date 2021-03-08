<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT NAME, COMPANY_CITY, COMPANY_DISTRICT FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM) JOIN Recycling_Process USING (process_id,process_date) JOIN paper_recycling USING (process_id,process_date)");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>Name</th><th>CITY</th><th>DISTRICT</th></tr></center>";
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