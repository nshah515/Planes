<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
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
		 
		
		

		//Create a SQL statement
		Statement stmt = con.createStatement();
		String username = (String) session.getAttribute("sessname");
		String password = (String) session.getAttribute("password");
		String flightNumberToCancel = request.getParameter("inputFlightNumberCancel");
		String flightNumber = flightNumberToCancel;
		System.out.println("============");
		String query = "SELECT * FROM reservations where flight_number="+flightNumberToCancel+" AND (username='"+username+"' and password='"+password+"')";
		System.out.println(query);
		
		// check if flight number exists
		String querystring = "SELECT COUNT(*) as cnt FROM flight WHERE flight_number='"+flightNumberToCancel+"'";
		ResultSet ans = stmt.executeQuery(querystring);
		while(ans.next()){
			if (ans.getInt("cnt")==0){
				response.sendRedirect("idiot.jsp");
				return;
			}
		}
		ans.close();
		
		ResultSet result = stmt.executeQuery(query);
	
		//Start parsing out the result of the query. Don't forget this statement. It opens up the result set.
		double total_fare = 0;
		while(result.next()){
			int ticket_number = result.getInt("ticket_number");
			
			total_fare = Double.parseDouble(result.getString("total_fare"));
			String seatClass = result.getString("class");
			String capacityForClass = "_class_cap";
			if (seatClass.equals("first")){
				capacityForClass = "first" + capacityForClass;
			}
			else if (seatClass.equals("economy")){
				capacityForClass = "economy" + capacityForClass;
			}
			else{
				capacityForClass = "business" + capacityForClass;
			}
			String queryToGetCapacity = "SELECT "+capacityForClass+" FROM flight WHERE flight_number="+flightNumber+" AND class ='"+seatClass+"'";
			System.out.println("string is is ");
			System.out.println(queryToGetCapacity);
			ResultSet resultForCapacity = stmt.executeQuery(queryToGetCapacity);
			int capacity = 0;
			while(resultForCapacity.next()){
				capacity = Integer.parseInt(resultForCapacity.getString(capacityForClass));
				break;
			}
			System.out.println("capcacity is ");
			System.out.println(capacity);
			
			// If the capacity left is more than zero that means we should update the capacity by one because the person canceled his flight. 
			if (capacity > 0){
				capacity += 1;
				String queryToUpdateCapacity = "";
				if (capacityForClass.equals("business_class_cap")){
					queryToUpdateCapacity = "UPDATE flight SET business_class_cap=? WHERE flight_number="+flightNumber+" AND class='"+seatClass+"'";
				}
				else if(capacityForClass.equals("economy_class_cap")){
					queryToUpdateCapacity = "UPDATE flight SET economy_class_cap=? WHERE flight_number="+flightNumber+" AND class='"+seatClass+"'";
				}
				else{
					// it is first_class_cap
					queryToUpdateCapacity = "UPDATE flight SET first_class_cap=? WHERE flight_number="+flightNumber+" AND class='"+seatClass+"'";
				}
				
				PreparedStatement ps = con.prepareStatement(queryToUpdateCapacity);
				ps.setInt(1, capacity);
				int i = ps.executeUpdate();
				
			}
			else{
				// capacity is zero so get someone out of waitlist and put them on
				String getTicketNumberForWaitlistedThisFlight = "SELECT ticket_number FROM reservations WHERE flight_number="+flightNumber+" AND waitlist=1 AND class='"+seatClass+"'";
				System.out.println(getTicketNumberForWaitlistedThisFlight);
				ResultSet resultWaitListPerson = stmt.executeQuery(getTicketNumberForWaitlistedThisFlight);
				while(resultWaitListPerson.next()){
					int ticketNumber = Integer.parseInt(resultWaitListPerson.getString("ticket_number"));
					System.out.println("ticketNumber is " + ticketNumber);
					String purchaseTicketForWaitlister = "UPDATE reservations SET waitlist=?, total_fare=? WHERE ticket_number="+ticketNumber;
					System.out.println("inside waitlist");
					System.out.println(purchaseTicketForWaitlister);
					PreparedStatement ps2 = con.prepareStatement(purchaseTicketForWaitlister);
					ps2.setBoolean(1, false);
					ps2.setDouble(2, total_fare);
					ps2.executeUpdate();
					break;
				}
			}
			
			
			// Deleting the current user for their ticket
			
			String deleteTicket = "DELETE FROM reservations WHERE ticket_number=?";
			//Create a Prepared SQL statement allowing you to introduce the parameters of the query
			PreparedStatement ps1 = con.prepareStatement(deleteTicket);
			ps1.setInt(1, ticket_number);
			ps1.executeUpdate();
			response.sendRedirect("customerrep.jsp");
			break;
			
		}
		
		
	%>

</body>
</html>