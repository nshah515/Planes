<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 

   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 

    <title>Sort Your Searches Customer Rep</title>

   

    <style>

        body{

            background-color: silver;

            background-image: url("airplane.jpg");

            background-attachment: fixed;

        }

    </style>

  </head>

<body>
<%
String depairport = request.getParameter("depairport");
request.setAttribute("depairprt", depairport);
String flightnumber = request.getParameter("flightNumber");
request.setAttribute("flightnum", flightnumber);
String airline = request.getParameter("airline");
request.setAttribute("airln", airline);


String seatclass[]= request.getParameterValues("seatclass");
request.setAttribute("seatclss", seatclass);

String flighttype[]=request.getParameterValues("flighttype");
request.setAttribute("flighttp", flighttype);


String connectingFlights[]= request.getParameterValues("connectingflights");
request.setAttribute("connFlights", connectingFlights);

String depttime = request.getParameter("depttime");
request.setAttribute("depttme", depttime);

String arrairport = request.getParameter("arrairport");
request.setAttribute("arrairprt", arrairport);

String arrtime = request.getParameter("arrtime");
request.setAttribute("arrtim", arrtime);

String startdate = request.getParameter("startdate");
request.setAttribute("strtdate", startdate);

String enddate = request.getParameter("enddate");
request.setAttribute("enddte", enddate);


String flexdate= request.getParameter("flex");
request.setAttribute("flxdte", flexdate);

String flexat= request.getParameter("flexat");
request.setAttribute("flxdteat", flexat);

String flexst= request.getParameter("flexst");
request.setAttribute("flexst", flexst);

String flexnd= request.getParameter("flexnd");
request.setAttribute("flexnd", flexnd);



%>



<form action="searchForFlightCR.jsp">
		
				<input type="text" name="depairprt" value="${depairprt}" style="display:none"> 
				<input type="text" name="flightnum" value="${flightnum}" style="display:none"> 
				<input type="text" name="airln" value="${airln}" style="display:none"> 
				<input type="text" name="flighttp1" value="${flighttp[0]}" style="display:none"> 
				<input type="text" name="flighttp2" value="${flighttp[1]}" style="display:none"> 
				<input type="text" name="flighttp3" value="${flighttp[2]}" style="display:none"> 
								
				
				<input type="text" name="seatclss1" value="${seatclss[0]}" style="display:none"> 
				<input type="text" name="seatclss2" value="${seatclss[1]}" style="display:none"> 
				<input type="text" name="seatclss3" value="${seatclss[2]}" style="display:none"> 
				
				<input type="text" name="connFlight1" value="${connFlights[0]}" style="display:none"> 
				<input type="text" name="connFlight2" value="${connFlights[1]}" style="display:none"> 
				<input type="text" name="connFlight3" value="${connFlights[2]}" style="display:none"> 
				
				<input type="text" name="arrtim" value="${arrtim}" style="display:none"> 	
				<input type="text" name="depttme" value="${depttme}" style="display:none"> 
				<input type="text" name="arrairprt" value="${arrairprt}" style="display:none"> 
				<input type="text" name="strtdate" value="${strtdate}" style="display:none"> 
				<input type="text" name="enddte" value="${enddte}" style="display:none"> 
				<input type="text" name="flxdte" value="${flxdte}" style="display:none"> 
				<input type="text" name="flxdteat" value="${flxdteat}" style="display:none"> 
				<input type="text" name="flexst" value="${flexst}" style="display:none"> 
				<input type="text" name="flexnd" value="${flexnd}" style="display:none"> 
		
		
		
			<div class="row mt-5">



			<div class="col-6 offset-3 card border rounded text-white mr-1"
				style="background-color: black">



				<center>
					<h2 class="display-4 pt-5 pb-3">Customer Representative</h2>
				</center>

				<center>
					<p>Enter your criteria to search for flights</p>
				</center>

				<br>
				<br>


				<form method="post" action="sortsearchbyCR.jsp">
				

 
					<div class="form-group">

						<label >Sort By : </label> <br> <input
							type="checkbox" name="col1" value="price"> price <br> 
						<input type="checkbox" name="col2" value="departure_time"> Departure Time <br>
							 <input
							type="checkbox" name="col3" value="arrival_time">
						arrival time

					</div>

					<br>



					
	
					<button
						class="btn btn-primary btn-block mb-5 mt-2 border border-white"
						type="submit" id="search">Sort</button>
				</form>


			</div>



		</div>
		
		
	<!--  
		<input type="checkbox" name="col1" value="price"> price #<br>
		
		<input type="checkbox" name="col4" value="departure_airport" > departure airport <br>
		<input type="checkbox" name="col5" value="arrival_airport" > arrival airport<br>
		<input type="checkbox" name="col6" value="type" > type<br>
		<input type="checkbox" name="col7" value="aircraft_id" > aircraft id<br>
		<input type="checkbox" name="col8" value="airline_id" >airline id<br>
		
	-->	
	
		<br>
	
	</form>
	
<a href="searchForFlightCR.jsp"></a>

</body>
</html>