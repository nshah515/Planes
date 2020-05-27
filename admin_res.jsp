<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>

 

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 

   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 

    <title>Admin Reservations</title>

   

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

          <h1 class="display-3 mb-5 text-white"><center>Administrator</center></h1>

   

    

        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

              
			<form method="post" action="listByFlight.jsp">
                <div class="form-group mt-3">

                    <label for="name">Customer Flight Number : </label>

                    <input class="form-control" type="text" id="flightnumber" name="flightnumber" placeholder="Flight #">

                </div>
                
                <button class="btn btn-primary btn-block mb-4 mt-0 border border-white" type="submit">List by Flight Number</button>
			</form>
                

                <p class="mb-1">Click here to view flight numbers</p>

                <a class="nav-link text-light" href="searchadmin.jsp">

                    <button class="btn btn-primary btn-block mb- mt-0 border border-white" type="submit">Flight Search</button>

                </a>

               

              
               

               <p>OR Enter Customer Name</p>

                <form class="form-inline" method="post" action="listByName.jsp">

                    <input class="form-control mr-3 mb-sm-3 md-2" type="text" id="fname" name="fname" placeholder="First Name">

                    <input class="form-control mb-3" type="text" id="lname" name="lname" placeholder="Last Name"><br>

                 <button class="btn btn-primary btn-block mb-4 mt-0 border border-white" type="submit">List by Customer Name</button>

                </form>   

                
				
				
             

            </div>

           

            

           

        </div>

        <br><br>

             

                

         

    

    

      </div>

   

 

   

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>

</html>