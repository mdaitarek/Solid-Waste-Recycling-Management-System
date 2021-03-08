<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT M.machine_name, M.processing_type FROM machine M JOIN used_tecnology UT ON M.machine_no = UT.machine_no JOIN Recycling_Process RP ON (RP.process_id = UT.process_id AND RP.process_date = UT.process_date ) JOIN Metal_Recycling MR ON (MR.process_id = RP.process_id AND MR.process_date = RP.process_date)");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>Machine Name</th><th>Processing Type</th></tr></center>";
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