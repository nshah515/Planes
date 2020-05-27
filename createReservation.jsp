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
		String flightNum = request.getParameter("flightnum");
		System.out.println(flightNum);
		String username = (String)session.getAttribute("sessname");
		String password = (String)session.getAttribute("password");
		String check_stm = "SELECT COUNT(*) as cnt FROM reservations WHERE username='"+username+"' AND password='"+password+"' and flight_number='" +flightNum+"'";
		String class_info = request.getParameter("class");
		System.out.println(class_info);
		if(class_info == "" || flightNum == ""){
			return;
		}
		try {

			//Get the database connection
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation","cs336","Asadasad1!");

			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(check_stm);
			while(result.next()){
				if(result.getInt("cnt")==1){
					// user has already booked a resevation on this flight
					response.sendRedirect("idoit2.jsp");
				}else{
					String checkstm = "Select count(*) as ctn from flight where flight_number='"+flightNum+"'";
					stmt = con.createStatement();
					System.out.println(checkstm);
					result = stmt.executeQuery(checkstm);
					result.next();
					if(result.getInt("ctn") == 0){
						response.sendRedirect("idiot.jsp");
						return;
					}
					
					String flight_info_stm = "Select * from flight where flight_number='"+flightNum+"' and class='"+class_info+"'";
					System.out.println(flight_info_stm);
					result = stmt.executeQuery(flight_info_stm);		
					while(result.next()){
						String departtime = result.getString("departure_time");
						String arrivetime = result.getString("arrival_time");
						String departAirport = result.getString("departure_airport");
						String arriveAirport = result.getString("arrival_airport");
						java.sql.Date startDate = result.getDate("start_date");
						java.sql.Date endDate = result.getDate("end_date");
						String classType = result.getString("type");
						String flight_type = result.getString("flight_type");
						String connecting_flight = result.getString("connecting_flight");
						int first_cap = result.getInt("first_class_cap");
						int business_cap = result.getInt("business_class_cap");
						int economy_cap = result.getInt("economy_class_cap");
						int aircraft_id = result.getInt("aircraft_id");
						String airline_id = result.getString("airline_id");
						double price = result.getDouble("price");
						result.close();
						boolean waitlist = false;
						if(class_info.equals("first")){
							if(first_cap>0){
								// subtract one from first cap and update the table accordingly
								System.out.println("YOOOOOOOOOOOOOOOOO");
								first_cap -= 1;
								// TODO: create the update statement that will update the cap
								String update = "Update flight set first_class_cap=? where aircraft_id='"+aircraft_id+"'";
								PreparedStatement p = con.prepareStatement(update);
								p.setInt(1, first_cap);
								p.executeUpdate();
							}else{
								// code that will add the user to the waitlist
								waitlist = true;
								price = 0;
							}
						}else if(class_info.equals("business")){
							if(business_cap>0){
								// subtract one from first cap and update the table accordingly
								business_cap -= 1;
								// TODO: create the update statement that will update the cap
								String update = "Update flight set business_class_cap=? where aircraft_id='"+aircraft_id+"'";
								PreparedStatement p = con.prepareStatement(update);
								p.setInt(1, business_cap);
								p.executeUpdate();
							}else{
								// code that will add the user to the waitlist
								waitlist = true;
								price = 0;
							}
						}else{
							if(economy_cap>0){
								// subtract one from first cap and update the table accordingly
								economy_cap -= 1;
								// TODO: create the update statement that will update the cap
								String update = "Update flight set economy_class_cap=? where aircraft_id='"+aircraft_id+"'";
								PreparedStatement p = con.prepareStatement(update);
								p.setInt(1, economy_cap);
								p.executeUpdate();
							}else{
								// code that will add the user to the waitlist
								waitlist = true;
								price = 0;
							}
						}
						String max_stm = "select max(ticket_number) as tn from reservations";
						int max;
						
						result = stmt.executeQuery(max_stm);
						result.next();
						max = result.getInt("tn");
						max += 1;
						result.close();
					
						System.out.println(max);
						String stm = "Insert into reservations(ticket_number, t_num, purchase_date, departure_time, arrival_time, special_meal, class, flight_type, connecting_flight, booking_fee, total_fare, username, password, flight_number, first_name, last_name, airline_id, start_date, end_date, waitlist, arrival_airport, departure_airport)"
								+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						System.out.println(stm);
						java.util.Date date = new java.util.Date();
				        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
						String flstm = "Select first_name, last_name from users where username='"+username+"' AND password='"+password+"'";
						System.out.println(flstm);
						result = stmt.executeQuery(flstm);
						result.next();
						String firstName = result.getString("first_name");
						String lastName = result.getString("last_name");
						System.out.println(firstName);
				        PreparedStatement ps = con.prepareStatement(stm);
						boolean special_meal = class_info.equals("first") || class_info.equals("business");
						ps.setInt(1, max);ps.setInt(2,max);ps.setDate(3, sqlDate);ps.setString(4,departtime);ps.setString(5, arrivetime);ps.setBoolean(6, special_meal);ps.setString(7, class_info);ps.setString(8,flight_type);
						ps.setString(9, connecting_flight); ps.setInt(10,0);ps.setDouble(11, price);ps.setString(12, username);ps.setString(13, password);ps.setInt(14, Integer.parseInt(flightNum));
						ps.setString(15,firstName);ps.setString(16,lastName);ps.setString(17,airline_id);ps.setDate(18,startDate);ps.setDate(19,endDate);ps.setBoolean(20, waitlist);
						ps.setString(21, departAirport);ps.setString(22, arriveAirport);
						ps.executeUpdate();
						response.sendRedirect("home.jsp");
					}
				}
			}
		}
		catch (Exception ex) {
			out.print(ex);
			out.print("insert failed");
		}
	%>
</body>
</html>