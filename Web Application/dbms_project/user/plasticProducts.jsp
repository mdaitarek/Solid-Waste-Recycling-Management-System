<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT DISTINCT PRODUCT_NAME FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE) JOIN COMPANY USING (COMPANY_TRADE_NUM) JOIN waste_recycling USING (COMPANY_TRADE_NUM) JOIN Recycling_Process USING (process_date,process_id) JOIN plastic_recycling USING (process_id,process_date)");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>Name</th></tr></center>";
	while(rs.next())
	{
		str += "<tr><td>"+rs.getString(1)+"</td></tr>";
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