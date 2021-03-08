<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT \"NAME\", \"AREA AGENT ID\", \"TRANSACTION ID\", TO_CHAR(\"TRANSACTION DATE\", 'DD-MON-YYYY') \"TRANSACTION DATE\", \"WASTE TYPE\", CONCAT(\"AMOUNT\", ' kg') \"AMOUNT\", CONCAT(\"PRICE PER UNIT\", ' tk') \"PRICE PER UNIT\", CONCAT(\"EXPENSE\", ' tk') \"EXPENSE\" FROM LD_TRANSACTION_AA_VIEW WHERE LOWER(\"DEALER DEALERSHIP NO.\") = 'ld_0000001' OR \"DEALER DEALERSHIP NO.\" = 'LD_0000001'");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>Name</th><th>AREA AGENT ID</th><th>TRANSACTION ID</th><th>TRANSACTION DATE</th><th>WASTE TYPE</th><th>AMOUNT</th><th>PRICE PER UNIT</th><th>EXPENSE</th></tr></center>";
	while(rs.next())
	{
		str += "<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>";
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