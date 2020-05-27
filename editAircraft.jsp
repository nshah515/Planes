<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ page import="javax.servlet.http.*,javax.servlet.*"%>   
<!DOCTYPE html>
<html>
<head>

        <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 

   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 

    <title>Possible Airports</title>

   

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

	
	String stm = "SELECT aircraft_id, airline_ID FROM aircraft ";
	
	
		
		
	
		
		System.out.println(stm);
	%>
		
	<br>
	<form method="post" class="mb-5">

    <h1 class="display-1 mb-5 text-white"><center>Possible Aircrafts</center></h1>

    <table class=" col-4 offset-4 table table-s table-striped table-dark table-hover">

    	<tr>
    		<td>Aircraft ID</td>
    		<td>Airline ID</td>
    	</tr>
                
			
			
	<%
		try{
			Class.forName("com.mysql.jdbc.Driver");
    	    Connection con= DriverManager.getConnection("jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation","cs336","Asadasad1!");
    	    Statement stmt = con.createStatement();
    	    ResultSet rs = stmt.executeQuery(stm);
    	    
    	    while(rs.next()){
    	    	%>
    	    		<tr>
    	    			<td><%=rs.getString("aircraft_id")%></td>
    	    			<td><%=rs.getString("airline_id")%></td>
    	    			
 					</tr>   	    	
    	    	<%
    	    }
		
		}catch(Exception e){
			out.print(e);
       		out.print("query failed");
		}
	
%>
</table></form>


        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

             

                <p class="pt-3 mb-0"><center>Update Aircraft Details</center></p>

              

                <label for="name">What would you like to do? </label>

                    
               
					
					 <form method="post" action="editAircraftCR.jsp">
					
					
					<div class="form-group mt-3">

                    <label for="name"> Aircraft ID : </label>

                    <input class="form-control" type="text" id="fnum" placeholder="Aircraft ID" name= "aircraft_id">
                    
                    <br>
                    
                    
                     <label for="name">Airline ID : </label>

                    <input class="form-control" type="text" id="fnum" placeholder="Airline ID" name= "airline_id">

                </div>
			
                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Edit</button>
                    
					</form>
					
					
                  


               

            </div>

           

            

            

            

        </div>

	

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>