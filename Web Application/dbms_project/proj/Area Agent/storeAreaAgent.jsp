<%@ page import = "java.sql.*"%>

<%

String agentId = request.getParameter("aid");
String agentName = request.getParameter("aname");
String agentCity = request.getParameter("acity");
String agentArea = request.getParameter("aarea");
String agentShopName = request.getParameter("asn");
String agentShopOpenTime = request.getParameter("asot");
String agentShopCloseTime = request.getParameter("asct");

try
{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	PreparedStatement ps = conn.prepareStatement("insert into Area_Agent values(?, ?, ?, ?, ?, ?, ?)");
	ps.setString(1, agentId);
	ps.setString(2, agentName);
	ps.setString(3, agentCity);
	ps.setString(4, agentArea);
	ps.setString(5, agentShopName);
	ps.setString(6, agentShopOpenTime);
	ps.setString(7, agentShopCloseTime);

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