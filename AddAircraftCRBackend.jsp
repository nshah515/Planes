<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation", "cs336",
				"Asadasad1!");
		Statement stmt = con.createStatement();
		String airline = request.getParameter("airline");
		String fcap = request.getParameter("fcap");
		String bcap = request.getParameter("bcap");
		String ecap = request.getParameter("ecap");
		
		String str = "SELECT COUNT(*) as cnt, airline_id as a FROM airline WHERE airline_id='"+airline+"'";
		//System.out.print("YEET"+str);
		//Run the query against the DB
		String airlineid = "";
		ResultSet result1 = stmt.executeQuery(str);
		while(result1.next()){
			if (result1.getInt("cnt")==0){
				response.sendRedirect("idiot.jsp");
				return;
			}
			else{
				
				airlineid = result1.getString("a");
				break;
			}
		}
		result1.close();
		
		String max_stm = "select max(aircraft_id) as tn from aircraft";
		int max;
		result1 = stmt.executeQuery(max_stm);
		result1.next();
		max = result1.getInt("tn");
		max += 1;
		result1.close();
		String q = "INSERT INTO aircraft(airline_id, aircraft_id, first_class_cap, business_class_cap, economy_class_cap) VALUES(?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(q);
		ps.setString(1, airlineid);
		ps.setInt(2, max);
		ps.setInt(3, Integer.parseInt(fcap));
		ps.setInt(4, Integer.parseInt(bcap));
		ps.setInt(5, Integer.parseInt(ecap));
		System.out.println(q);

		ps.executeUpdate();
		response.sendRedirect("customerrep.jsp");
		
		

%>

</body>
</html>