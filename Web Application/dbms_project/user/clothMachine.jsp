<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT machine_name, processing_type FROM machine JOIN used_tecnology USING (machine_no) JOIN Recycling_Process USING(process_id,process_date) JOIN Cloath_recycling USING(process_id,process_date)");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>MACHINE NAME</th><th>PROCESSING TYPE</th></tr></center>";
	while(rs.next())
	{
		str += "<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td></tr>";
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