<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!doctype html>

 

<html>

 

  <head>

 


 

    <meta charset="utf-8">

 

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 


 

  

 

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 


 

    <title>Airlines Home</title>

 

   

 

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

 

          <h1 class="display-1 mb-5 text-white"><center>Admin<br> Business Details</center></h1>

 

  

 

   

 

        <div class="row mt-5">

 

        

 

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

 

             

 

                <center><h2 class="display-4 pt-5 pb-3">Sales Report</h2></center>

 

          

 

              

                <form method="post" action="sales_rep.jsp">

               <div class="form-group">

 

                <label for="month">Month : </label>

 

                <select class="form-control" id="month" name="month">

 

                    <option value="jan">January</option>

 

                    <option value="feb">February</option>

 

                    <option value="mar">March</option>

 

                    <option value="apr">April</option>

 

                    <option value="may">May</option>

 

                    <option value="jun">June</option>

 

                    <option value="jul">July</option>

 

                    <option value="aug">August</option>

 

                    <option value="sep">September</option>

 

                    <option value="oct">October</option>

 

                    <option value="nov">November</option>

 

                    <option value="dec">December</option>

 

                </select>

 

            </div>

 

             

 

            <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Get Report</button>

                </form>

              

 

            </div>

 

         

 

        </div>

 

             

 

        <div class="row mt-5">

 

        

 

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

 

             

 

                <center><h2 class=" pt-3 pb-3">Summary Listing of Revenue :</h2></center>

                <center><label for="month">Please Choose One</label></center>

 

          

 

              

 

            <form method="post" action="rev_listing.jsp">

 

                <div class="form-row mb-2">

 

                   <label for="" class="col-2 col-md-1 pt-1">By: </label>

 

                    <div class="col">

 

                        <input type="text" class="form-control" name="flightnumber" placeholder="Flight #">

 

                    </div>

 

                    

 

                </div>

 

           

 

             

 

           

 

                <div class="form-row mb-2">

 

                   <label for="" class="col-2 col-md-1 pt-1">By: </label>

 

                    <div class="col">

 

                        <input type="text" class="form-control" name="airline" placeholder="Airline">

 

                    </div>

 

                  

 

                </div>

 

           

 

             

 

           

 

                <div class="form-row mb-3">

 

                   <label for="" class="col-2 col-md-1 pt-1">By: </label>

 

                    <div class="col">

 

                        <input type="text" class="form-control" name="username" placeholder="Customer Username">

 

                    </div>

 

                     <div class="col">

 

                        <input type="text" class="form-control" name="password" placeholder="Customer Password">

 

                    </div>

 

                  

 

                </div>

 

           

                      

              

 

            <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Get Summary</button>

 

           </form>   

 

            </div>

 

         

 

        </div>

 

              

 

       

 

        <div class="row mt-5">

 

        

 

            <div class="col-6 offset-3 card border rounded text-white mr-1" style="background-color: black">

 

             

 

                <center><h2 class="display-4 pt-2 pb-3">Logistic Info</h2></center>

 

          

 

              

                       <form method="post" action="top_customer.jsp">

               <div class="form-group">

 

                <label for="">Most Total Revenue Generated by : </label>

 

                <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Get Customer</button>

 

                </div>

                       </form>

              

                       <form method="post" action="make_list.jsp">

                <div class="form-group">

 

                <label for="">Most Active Flights : </label>

 

                <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Get List</button>

 

                </div>

                       </form>

              

                       <form method="post" action="airport_list.jsp">

                <div class="form-group">

 

                    <label for="name">Input Airport : </label>

 

                    <input class="form-control" type="text" id="name" name="aid" placeholder="3 Letter ID">

 

                    <button class="btn btn-primary btn-block border my-3 border-white" type="submit">List Flights</button>

 

                </div>

                       </form>

              

 

            </div>

 

         

 

        </div>    

 

       

 

        <br>

 

   

 

   

 

      </div>

 

  

 


 

  

 

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

 

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

 

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

 

  </body>

 

</html>