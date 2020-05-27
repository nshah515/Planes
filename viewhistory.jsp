<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>


<!DOCTYPE html>
<html>
<head>

 

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 

   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 

    <title>View Reservation History</title>

   

    <style>

        body{

            background-color: silver;

            background-image: url("airplane.jpg");

            background-attachment: fixed;

        }

    </style>

  </head>
<body>
      
<form method="post">
	<H3 align="center"><BR>History</H3>
	<table border="2" align="center" bgcolor="white">
		<tr>
			<td>ticket #</td>
			<td>purchase date</td>
			<td>first name</td>
			<td>last name</td>
			<td>airline</td>
			<td>departure date</td>
			<td>departure time</td>
			<td>arrival date</td>
			<td>arrival time</td>
			<td>special meal</td>
			<td>class</td>
			<td>flight type</td>
			<td>Connecting flights</td>
			<td>price</td>


		</tr>
		<%
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation","cs336","Asadasad1!");
			String username = (String)session.getAttribute("sessname");
			String password = (String)session.getAttribute("password");
			Statement stmt=con.createStatement();
			java.util.Date date = new java.util.Date();
	        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			String query="select * from reservations where username='"+username+"' and password='"+password+"'" + " and start_date<"+"date'"+sqlDate+"'";
			System.out.println(query);
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next())
			{
				
			
		%>a
			
			    <tr>
			    <td><%=rs.getInt("ticket_number")%></td>	
			    <td><%=rs.getDate("purchase_date") %></td>
			    <td><%=rs.getString("first_name")%></td>
			    <td><%=rs.getString("last_name")%></td>
			    <td><%=rs.getString("airline_id")%></td>
			    <td><%=rs.getDate("start_date") %></td>
			    <td><%=rs.getString("departure_time")%></td>
			    <td><%=rs.getDate("end_date") %></td>
			    <td><%=rs.getString("arrival_time")%></td>
			    <td><%=rs.getBoolean("special_meal")%></td>
			    <td><%=rs.getString("class")%></td>
			    <td><%=rs.getString("flight_type")%></td>
			    <td><%=rs.getString("connecting_flight")%></td>
			    <td><%=rs.getDouble("price")%></td>
			    
				</tr><%
			
			}
			%>
			    </table>
			    <%
			    rs.close();
			    stmt.close();
			    con.close();
			    }
			catch(Exception e)
			{
			    e.printStackTrace();
			    }
			
			
			
		
		%>
	
</form>
</body>
</html>