<%@ page import = "java.sql.*"%>

<%

String chemicalName = request.getParameter("cn");
String chemicalSymbol = request.getParameter("cs");
String producerCompany = request.getParameter("pc");
String reason = request.getParameter("re");
float amountPerDay = request.getParameter("apd");
float pricePerUnit = request.getParameter("ppu");
String countryOfOrigin = request.getParameter("co");

try
{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle91", "raqib375");
	PreparedStatement ps = conn.prepareStatement("insert into Area_Agent values(?, ?, ?, ?, ?, ?, ?)");
	ps.setString(1, chemicalName);
	ps.setString(2, chemicalSymbol);
	ps.setString(3, producerCompany);
	ps.setString(4, reason);
	ps.setString(5, amountPerDay);
	ps.setString(6, pricePerUnit);
	ps.setString(7, countryOfOrigin);

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