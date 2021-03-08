<%@ page import = "java.sql.*"%>

<%

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	response.setContentType("text/html");
	//PrintWriter pw = response.getWriter();

try
{
	PreparedStatement ps = conn.prepareStatement("SELECT CONCAT(SUM(process_collected_waste), ' kg'), CONCAT(SUM(process_recycled_amount),' kg'),CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%'), TO_CHAR(process_date,'YYYY') FROM Recycling_Process JOIN FOOD_RECYCLING USING (process_id,process_date) GROUP BY TO_CHAR(process_date,'YYYY')");
	ResultSet rs = ps.executeQuery();
	String str = "<center><table border=2><tr><th>COLLECTED WASTE</th><th>RECYCLED WASTE</th><th>RECYCLING RATE</th><th>YEAR</th></tr></center>";
	while(rs.next())
	{
		str += "<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>";
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