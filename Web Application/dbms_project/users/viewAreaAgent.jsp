<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT \"COMPANY NAME\",\"TRADE NO.\",\"WASTE TYPE\", CONCAT(\"AMOUNT\",' kg') \"AMOUNT\", CONCAT( \"PRICE PER UNIT\",' tk') \"PRICE PER UNIT\",CONCAT(\"TOTAL INCOME\",' tk') \"TOTAL INCOME\", TO_CHAR(\"DATE\", 'DD-MON-YYYY') \"DATE\" FROM LOCAL_DEALERS_COMPANY_VIEW WHERE LOWER(\"DEALER DEALERSHIP NO.\") = 'ld_0000001' OR \"DEALER DEALERSHIP NO.\" = 'LD_0000001'");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>AREA AGENT ID</th><th>NAME</th><th>CITY</th><th>AREA</th><th>SHOP NAME</th><th>SHOP OPENNING TIME</th><th>SHOP CLOSING TIME</th></tr></center>";
	while(rs.next())
	{
		str += "<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>";
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