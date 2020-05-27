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
		
		String airport = request.getParameter("airport");
		System.out.println("airport");
		String str = "SELECT COUNT(*) as cnt, airport_id FROM airport WHERE airport_id='"+airport+"'";
		//Run the query against the DB
		System.out.println("UHHH"+str);
		ResultSet result1 = stmt.executeQuery(str);
		while(result1.next()){
			if (result1.getInt("cnt")==1){
				response.sendRedirect("idiot.jsp");
				return;
			}
			else{
				break;
			}
		}
		result1.close();
		
		/* String max_stm = "select max(aircraft_id) as tn from reservations";
		int max;
		result1 = stmt.executeQuery(max_stm);
		result1.next();
		max = result1.getInt("tn");
		max += 1;
		result1.close();
		*/
		
		String q = "INSERT INTO airport(airport_id) values (?)";
		PreparedStatement ps = con.prepareStatement(q);
		ps.setString(1, airport);
		ps.executeUpdate();
		response.sendRedirect("customerrep.jsp");
		
		

%>

</body>
</html>