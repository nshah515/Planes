<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>

  <head>

 

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 

   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 

    <title>Customer Representatives</title>

   

    <style>

        body{

            background-color: silver;

            background-image: url("airplane.jpg");

            background-attachment: fixed;

        }

    </style>

  </head>

  <body>

    

     <br><br><br>

     <div class="container">

          <h1 class="display-3 mb-5 text-white"><center>Customer Representatives</center></h1>

   

    

        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

             

                <p class="pt-3 mb-0"><center>Reserve a flight</center></p>

              

                

               

                <p class="mb-1">Click here to view flight numbers</p>

                <a class="nav-link text-light" href="searchCR.jsp">

                    <button class="btn btn-primary btn-block mb- mt-0 border border-white" type="submit">Flight Search</button>

                </a>
                
                <form method="post" action="CreateReservationCR.jsp">
                
		
                <div class="form-group mt-3">

                    <label for="name">Flight Number : </label>

                    <input class="form-control" type="text" id="name" placeholder="Flight #" name='crfnum'>

                </div>
                
                <div class="form-group">

                    <label for="name">Class: </label>

                    <input class="form-control" type="text" id="name" placeholder="(Business,First,Economy)" name='crclass'>

                </div>

               
               <div class="form-group">

                    <label for="name">Customer Username: </label>

                    <input class="form-control" type="text" id="name" placeholder="Username" name='cruser'>

                </div>

                <div class="form-group">

                    <label for="name">Customer Password: </label>

                    <input class="form-control" type="text" id="name" placeholder="Password" name='crpassword'>

                </div>
                 

                

                <button class="btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Reserve</button>

           </form>    

            </div>

      
        </div>
        
        
        
       <div class="container">
   

        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

             

                <p class="pt-3 mb-0"><center>Edit A Customer's Reservation</center></p>        

               

                <p class="mb-1">Click here to view A Customer's Reservations</p>
					<a class="nav-link text-light" href="">
						<button class="btn btn-primary btn-block mb- mt-0 border border-white" type="submit">Reservation Search</button>
					</a>
              <form method="post" action="EditReservationCR.jsp">
                
                <div class="form-group mt-3">
                		<label for="name">Flight Number : </label>
						<input class="form-control" type="text" id="name" placeholder="Flight #" name=edflinum>
                </div>

                <div class="form-group">
                    <label for="name">Customer Username: </label>
                    <input class="form-control" type="text" id="name" placeholder="Username" name=edusername>
                </div>

                <div class="form-group">
                    <label for="name">Customer Password: </label>
                    <input class="form-control" type="text" id="name" placeholder="Password" name=edpassword>
                </div>
                
                <div class="form-group">
                    <label for="name">Edit Class </label>
                    <input class="form-control" type="text" id="name" placeholder="(Economy, Business, or First)" name='edclass'>
                </div>
                
                 <div class="form-group">
                    <label for="name">Edit Seat Number </label>
                    <input class="form-control" type="text" id="name" placeholder="Seat Number" name='edseatnum'>
                </div>
                
                 <div class="form-group">
                    <label for="name">Edit Destination </label>
                    <input class="form-control" type="text" id="name" placeholder="Arrival Airport ID" name='edArrAirp'>
                </div>

                <button class="btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Edit</button>
			</form>
               
		</div>

     </div>
        

       

      

       

        <div class="row mt-5">

       

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

             

                <p class="pt-3 mb-0"><center>Access Waiting List</center></p>

<form 			method="post" action="waitlist.jsp">
					<div class="form-group">

						<label for="name">Flight Number : </label> <input
							class="form-control" type="text" id="name" placeholder="Flight #"
							name='flightnum1'>

					</div>




                         <button class="btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Get Waiting List</button>
</form>
               

            </div>

           

            

        </div>

       

        <div class="row mt-5">

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

        

                <p class="pt-3 mb-0"><center>Update Flight Details</center></p>

              

                <label for="name">What would you like to do? </label>

                    
			
                	<a class="nav-link text-light" href="CustomerRepAdd.jsp">

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Add</button>
                    
					</a>
					
					
					<a class="nav-link text-light" href="CustomerRepEdit.jsp">

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Edit</button>
                    
					</a>
					
					
					<a class="nav-link text-light" href="CustomerRepDeleteFlight.jsp">

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Delete</button>
                    
					</a>
					 </div>

           

            

        </div>
		       
 
        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

             

                <p class="pt-3 mb-0"><center>Update Aircraft Details</center></p>

              

                <label for="name">What would you like to do? </label>



				<a class="nav-link text-light" href="editAircraft.jsp">
				
				
				
				
				
				

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Edit</button>
                    
				</a>
                    

                	<a href="CustomerRepDeleteAircraft.jsp">
                	

               

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Delete</button>
                    
					</a>
					
					
					
					
				
					
					<form method="post" action="AddAircraftCRBackend.jsp">
					
					
					<div class="form-group mt-3">

                    <label for="name"> Airline ID : </label>

                    <input class="form-control" type="text" id="name" placeholder="Airline ID" name="airline">

                </div>
					
					
					
						<div class="form-group mt-3">

                    <label for="name"> First Class Capacity : </label>

                    <input class="form-control" type="text" id="name" placeholder="First Class Cap" name="fcap">

                </div>
                
                
                	<div class="form-group mt-3">

                    <label for="name"> Business Class Capacity : </label>

                    <input class="form-control" type="text" id="name" placeholder="Businesss Class Cap" name="bcap">

                </div>
                
                
                
                	<div class="form-group mt-3">

                    <label for="name"> Economy Capacity : </label>

                    <input class="form-control" type="text" id="name" placeholder="Economy Cap" name="ecap">

                </div>
               

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Add</button>
                    
					</form>
					
					
                  


               

            </div>

           

            

            

            

        </div>
        
        
        
        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

             

                <p class="pt-3 mb-0"><center>Update Airport Details</center></p>

              

                <label for="name">What would you like to do? </label>

                    
                    
                 	<a class="nav-link text-light" href="editAirport.jsp">

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Edit</button>
                    
					</a>

                	<form method="post" action="AddAirportCRBackend.jsp">
                	
                	<div class="form-group mt-3">

                    <label for="name">Airport ID : </label>

                    <input class="form-control" type="text" id="name" name="airport"  placeholder="Airport ID">

                </div>

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit" >Add</button>
                    
					</form>
					
					

					
					
					<a class="nav-link text-light" href="CustomerRepDeleteAirport.jsp">
					
					

                    <button class=" btn btn-primary btn-block mb-3 mt-2 border border-white" type="submit">Delete</button>
                    
					</a>
					
					
                  


               

            </div>

           

            

            

            

        </div>

        

        <br><br>

           

                

    

    

      </div>

   

 

   

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>

</html>