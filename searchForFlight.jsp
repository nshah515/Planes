<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html>

<html>

<head>



<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">





<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">



<title>Airlines Home</title>



<style>
body {
	background-color: silver;
	background-image: url("airplane.jpg");
	background-attachment: fixed;
}
</style>

</head>
<body>

<!--  
	<form>
		<input type="checkbox" name="col1" value="flight_number"> Flight #<br>
		<input type="checkbox" name="col2" value="departure_time"> departure time<br>
		<input type="checkbox" name="col3" value="arrival_time" > arrival time<br>
		<input type="checkbox" name="col4" value="departure_airport" > departure airport <br>
		<input type="checkbox" name="col5" value="arrival_airport" > arrival airport<br>
		<input type="checkbox" name="col6" value="type" > type<br>
		<input type="checkbox" name="col7" value="aircraft_id" > aircraft id<br>
		<input type="checkbox" name="col8" value="airline_id" >airline id<br>
		<button
				class="col-6 offset-3 btn btn-primary btn-block border border-white"
				type="submit">SORT</button>
		<br>
	
	</form>
	-->
<% 


String sbfn = request.getParameter("col1");
String sbdt = request.getParameter("col2");
String sbat = request.getParameter("col3");
String sbda = request.getParameter("col4");
String sbaa = request.getParameter("col5");
String sbt = request.getParameter("col6");
String sbaci = request.getParameter("col7");
String sbali = request.getParameter("col8");



	String flightnumber = request.getParameter("flightnum");
	String airline = request.getParameter("airln");
	
	String[] flighttype1=request.getParameterValues("flighttp1");
	String typ1=flighttype1[0];
	String[] flighttype2=request.getParameterValues("flighttp2");
	String typ2=flighttype2[0];
	String[] flighttype3=request.getParameterValues("flighttp3");
	String typ3=flighttype3[0];
	String[] ftps = {typ1,typ2,typ3};
	
	
	String[] seatclass1 = request.getParameterValues("seatclss1");
	String scl1=seatclass1[0];	
	String[] seatclass2 = request.getParameterValues("seatclss2");
	String scl2=seatclass2[0];
	String[] seatclass3 = request.getParameterValues("seatclss3");
	String scl3=seatclass3[0];
	String[] seatcl = {scl1,scl2,scl3};

		
	String[] confli1 = request.getParameterValues("connFlight1");
	String cf1=confli1[0];	
	
	String[] confli2 = request.getParameterValues("connFlight2");
	String cf2=confli2[0];
	
	String[] confli3 = request.getParameterValues("connFlight3");
	String cf3=confli3[0];
	
	String[] conflights = {cf1,cf2,cf3};

	
	
	
	String depairport = request.getParameter("depairprt");
	String depttime = request.getParameter("depttme");
	String arrairport = request.getParameter("arrairprt");
	String arrtime = request.getParameter("arrtim");
	String startdate = request.getParameter("strtdate");
	String enddate = request.getParameter("enddte");
	
	String flexsttime =request.getParameter("flxdte");
	if (flexsttime==null) {
		flexsttime="No";
	}
	String flexdteat =request.getParameter("flxdteat");
	if (flexdteat==null) {
		flexdteat="No";
	}
	String flexst =request.getParameter("flexst");
	if (flexst==null) {
		flexst="No";
	}
	
	String flexnd =request.getParameter("flexnd");
	if (flexnd==null) {
		flexnd="No";
	}
	System.out.println(flexst);

	
	String stm = "Select * from flight where ";
	
	System.out.println(flexdteat);
	boolean first = false;
	if(flightnumber != ""){
		stm += "flight_number = '" + flightnumber + "'";
		first = true;
	}
	if(airline != ""){
		if(first){
			stm += " and airline_id = '" + airline + "'";
		}else{
			stm += "airline_id = '" + airline + "'";
			first = true;
		}
	}
	
	if(ftps != null){
		if(ftps.length != 0){
			String flightStm = "";
			for(int i = 0; i < ftps.length; i++){
				if(ftps[i].length()>0){
				if(i > 0){
					flightStm += " or flight_type='" + ftps[i] + "'";
				}else{
					flightStm += "(flight_type='" + ftps[i] + "'";
				}
				}
			}
			if(first&&!(flightStm.length()==0)){
				flightStm += ")";
				stm += " and " + flightStm;
			}else if(!(flightStm.length()==0)){
				flightStm += ")";

				stm += flightStm;
				first  = true;
			}
		}
	}
	
	
	if(seatcl != null){
		if(seatcl.length != 0){
			String seatStm = "";
			for(int i = 0; i < seatcl.length; i++){
				if(seatcl[i].length()>0){
				if(i > 0){
					seatStm += " or class='" + seatcl[i] + "'";
				}else{
					seatStm += "(class='" + seatcl[i] + "'";
				}
			}
			}
			if(first&&!(seatStm.length()==0)){
				seatStm += ")";

				stm += " and " + seatStm;
			}else if (!(seatStm.length()==0)){
				seatStm += ")";

				stm += seatStm;
				first  = true;
			}
		}
	}
	
	if(conflights != null){
		if(conflights.length != 0){
			String connectStm = "";
			for(int i = 0; i < conflights.length; i++){
				if(conflights[i].length()>0){
				if(i > 0){
					connectStm += " or connecting_flight='" + conflights[i] + "'";
				}else{
					connectStm += "(connecting_flight='" + conflights[i] + "'";
				}
			}
			}
			
			if(first &&!(connectStm.length()==0)){
				connectStm += ")";
				stm += " and " + connectStm;
			}else if(!(connectStm.length()==0)){
				connectStm += ")";
				stm += connectStm;
				first  = true;
			}
		}
	}
	
	if(depairport != ""){
		if(first){
			stm += " and departure_airport = '" + depairport + "'";
		}else{
			stm += "departure_airport = '" + depairport + "'";
			first = true;
		}
	}
	
	if(depttime != ""){
		if(flexsttime.equals("Yes"))
		{

			String hourmin="";
			String hourmax="";
			//TIME INCREMENTER
			if(depttime.length()==5){
				int hour=Integer.parseInt(depttime.substring(0,2));
				int hourp=hour+10;
				int hourm=hour-10;
				 hourmin=Integer.toString(hourm)+":"+depttime.substring(3);
				 hourmax=Integer.toString(hourp)+":"+depttime.substring(3);
			}
			else if(depttime.length()==4){
				int hour=Integer.parseInt(depttime.substring(0,1));
				int hourp=hour+10;
				int hourm=hour-10;
			hourmin=Integer.toString(hourm)+":"+depttime.substring(2);
			hourmax=Integer.toString(hourp)+":"+depttime.substring(2);
			}

			if(first){
	
				stm += " and (departure_time BETWEEN '" + hourmin + "' AND '"+hourmax+"')";
				System.out.println("OHYEAH:"+stm);

			}else{
				stm += "(departure_time BETWEEN '"  + hourmin + "' AND '"+hourmax+"')";
				first = true;
			}	
			
		}
		else{
		
		if(first){
			stm += " and departure_time = '" + depttime + "'";
		}else{
			stm += "departure_time = '" + depttime + "'";
			first = true;
		}
		}
	}
	
	if(arrairport != ""){
		if(first){
			stm += " and arrival_airport = '" + arrairport + "'";
		}else{
			stm += "arrival_airport = '" + arrairport + "'";
			first = true;
		}
	}
	
	if(arrtime != ""){
		if(flexdteat.equals("Yes"))
		{

			String hourmin="";
			String hourmax="";
			//TIME INCREMENTER
			if(arrtime.length()==5){
				int hour=Integer.parseInt(arrtime.substring(0,2));
				int hourp=hour+10;
				int hourm=hour-10;
				 hourmin=Integer.toString(hourm)+":"+arrtime.substring(3);
				 hourmax=Integer.toString(hourp)+":"+arrtime.substring(3);
			}
			else if(arrtime.length()==4){
				int hour=Integer.parseInt(arrtime.substring(0,1));
				int hourp=hour+10;
				int hourm=hour-10;
			hourmin=Integer.toString(hourm)+":"+arrtime.substring(2);
			hourmax=Integer.toString(hourp)+":"+arrtime.substring(2);
			}

			if(first){
	
				stm += " and (arrival_time BETWEEN '" + hourmin + "' AND '"+hourmax+"')";

			}else{
				stm += "(arrival_time BETWEEN '"  + hourmin + "' AND '"+hourmax+"')";
				first = true;
			}	
			
		}
		
	else{
		if(first){
			stm += " and arrival_time = '" + arrtime + "'";
		}else{
			stm += "arrival_time = '" + arrtime + "'";
			first = true;
		}
	}
	}
	
	
	
	
	
	if(startdate != ""){
		
		if(flexst.equals("Yes"))
		{
			
			String dt = startdate;  

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			c.setTime(sdf.parse(dt));
			c.add(Calendar.DATE, -5); 
			String fromdate = sdf.format(c.getTime());  
			c.add(Calendar.DATE, 10);  
			String todate = sdf.format(c.getTime());  

		if(first){
			stm += " and (start_date BETWEEN '" + fromdate + "' AND '"+todate +"')";
		}else{
			stm += "(start_date BETWEEN '" + fromdate + "' AND '"+todate +"')";
			first = true;
		}
		}
		
		else {
			if(first){
				stm += " and start_date = '" + startdate + "'";
			}else{
				stm += "start_date = '" + startdate + "'";
				first = true;
			}
		}
		
	}
	
if(enddate != ""){
		
		if(flexnd.equals("Yes"))
		{
			
			String dt = enddate;  

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			c.setTime(sdf.parse(dt));
			c.add(Calendar.DATE, -5); 
			String fromdate = sdf.format(c.getTime());  
			c.add(Calendar.DATE, 10);  
			String todate = sdf.format(c.getTime());  

		if(first){
			stm += " and (end_date BETWEEN '" + fromdate + "' AND '"+todate +"')";
		}else{
			stm += "(end_date BETWEEN '" + fromdate + "' AND '"+todate +"')";
			first = true;
		}
		}
		
		else {
			if(first){
				stm += " and end_date = '" + enddate + "'";
			}else{
				stm += "end_date = '" + enddate + "'";
				first = true;
			}
		}
		
	}
	
	
	
/*
	if(enddate != ""){
		if(first){
			stm += " and end_date = '" + enddate + "'";
		}else{
			stm += "end_date = '" + enddate + "'";
			first = true;
		}
	}
	*/
	
	
	
	if(!first){
		stm = "Select * from flight";
	}
	
	
	
	//if 1 all values are none, else 0 
	int allnull=1;
	String example=" ORDER BY ";

	String sortstm="";
	if(!(sbfn==null && sbdt==null && sbat==null &&sbda==null && sbaa==null&&sbt==null&&sbaci==null&&sbali==null))
	{
	sortstm=example;
	}
	int and=-1;
	if(!(sbfn==null))
	{
	sortstm+=sbfn;
	and++;
	}

	if(!(sbdt==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";	
		and=-1;
	}
	sortstm+=sbdt;
	and++;
	}

	if(!(sbat==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";
		and=-1;
	}
	sortstm+=sbat;
	and++;

	}

	if(!(sbda==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";	
		and=-1;
	}
	sortstm+=sbda;
	and++;

	}

	if(!(sbaa==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";	
		and=-1;
	}
	sortstm+=sbaa;
	and++;

	}

	if(!(sbt==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";	
		and=-1;
	}
	sortstm+=sbt;
	and++;

	}

	if(!(sbaci==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";	
		and+=-1;
	}
	sortstm+=sbaci;
	and++;

	}

	if(!(sbali==null))
	{
	if(and==0)
	{
		sortstm+=" AND ";	
	}
	sortstm+=sbali;

	}

	
	stm+=sortstm;
System.out.println(stm);
	



%>



	
		
	
	
		<form method="post">
		<h1 class="display-1 mb-5 text-white">
			<center>Possible Flights</center>
		</h1>
		
		
		<table border="2" align="center" bgcolor="white" class="col-8 offset-2 table table-s table-striped table-dark table-hover table-responsive sticky-top">
		<tr>
		
		<td>price</td>
		<td>Flight #</td>
		
		<td>departure time</td>
		<td>arrival time</td>
		
		<td>departure date</td>
		<td>arrival date</td>
		
		<td>departure airport</td>
		<td>arrival airport</td>
		
		
		
		<td>type</td>
		<td>class</td>
		<td>flight type</td>
		<td>connecting flight</td>
		<td>airline</td>
								
					
	
		</tr>
	
		
	<%

	
	
	try {
		
		
		
		//Get the database connection
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation","cs336","Asadasad1!");
		

		//Create a SQL statement
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(stm);
		while (rs.next()) {
			%>

			<tr>
				<td><%=rs.getString("price")%></td>
				<td><%=rs.getString("flight_number")%></td>
				<td><%=rs.getString("departure_time")%></td>
				<td><%=rs.getString("arrival_time")%></td>
				<td><%=rs.getString("start_date")%></td>
				<td><%=rs.getString("end_date")%></td>
				<td><%=rs.getString("departure_airport")%></td>
				<td><%=rs.getString("arrival_airport")%></td>	
				<td><%=rs.getString("type")%></td>
				<td><%=rs.getString("class")%></td>

				<td><%=rs.getString("flight_type")%></td>
				<td><%=rs.getString("connecting_flight")%></td>
				<td><%=rs.getString("airline_id")%></td>	


			</tr>
			<%
		}
		
	}
	catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
	}
	
	%>
		

</table>
</form>
<a href="viewhistory.jsp"></a>
<a href="searchForFlight.jsp"></a>
<a href="createcancel.jsp"></a>

<form action=createcancel.jsp > 
<br> <a class="nav-link text-light" >

			<button
				class="col-6 offset-3 btn btn-primary btn-block border border-white"
				type="submit">Create Reservation Here</button>

		</a> <br>
</form>
</body>
</html>