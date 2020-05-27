<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>

  <head>

 

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 

   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 

    <title>Update Information</title>

   

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

          <h1 class="display-1 mb-5 text-white"><center>Update Information</center></h1>

   

    

        <div class="row mt-5">

         

            <div class="col-6 offset-3 card border rounded text-white my-2" style="background-color: black">

              

                <center><h2 class="display-4 pt-5 pb-3">Add Information</h2></center>
                
                <center>
					<p>Input your credentials for the account you wish to add</p>
				</center>


               <br><br>

              
			<form method="post" action="add_user.jsp">
               
               <div class="my-2 form-group">

                    <label for="name">Username : </label>

                    <input class="form-control" type="text" id="uname" name="username" placeholder="Username">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Password : </label>

                    <input class="form-control" type="text" id="pword" name="password" placeholder="Password">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">First Name : </label>

                    <input class="form-control" type="text" id="fname" name="firstname" placeholder="First Name">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Last Name : </label>

                    <input class="form-control" type="text" id="lname" name="lastname" placeholder="Last Name">

                </div>
                
                <div class="form-group">

						<label for="gender">Account Type : </label> 
						<select class="form-control" id="account_type"  name='type'>

							<option value='Customer'>Customer</option>

							<option value='Customer representative'>Customer
								Representative</option>

						</select>

					</div>
           
                <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Submit</button>
			</form>
                

               

            </div>
            

           <div class="col-6 offset-3 card border rounded text-white my-2" style="background-color: black">

              

                <center><h2 class="display-4 pt-5 pb-3">Edit Information</h2></center>
                
                <center>
					<p>Please enter all credentials for the account you wish to update</p>
				</center>


               <br><br>

              

              <form method="post" action="edit_user.jsp"> 
               <div class="my-2 form-group">

                    <label for="name">Username : </label>

                    <input class="form-control" type="text" id="uname" name="username" placeholder="Username">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Password : </label>

                    <input class="form-control" type="text" id="password" name="password" placeholder="Password">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">First Name : </label>

                    <input class="form-control" type="text" id="fname" name="firstname" placeholder="First Name">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Last Name : </label>

                    <input class="form-control" type="text" id="lname" name="lastname" placeholder="Last Name">

                </div><br>
               
				<center>
					<p>Please enter any information you wish to change</p>
				</center>
               
				<div class="my-2 form-group">

                    <label for="name">Username : </label>

                    <input class="form-control" type="text" id="tuname" name="targetUsername" placeholder="Username">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Password : </label>

                    <input class="form-control" type="text" id="tpword" name="targetPassword" placeholder="Password">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">First Name : </label>

                    <input class="form-control" type="text" id="tfname" name="targetFirstname" placeholder="First Name">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Last Name : </label>

                    <input class="form-control" type="text" id="tlname" name="targetLastname" placeholder="Last Name">

                </div>
                
                <div class="form-group">

						<label for="gender">Account Type : </label> 
						<select class="form-control" id="taccount_type"  name='targetType'>
						
							<option value='Do Not Change'>Do Not Change</option>

							<option value='Customer'>Customer</option>

							<option value='Customer representative'>Customer
								Representative</option>

						</select>

					</div>
                

                 

                    <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Submit</button>

               </form> 

               

            </div>
             <div class="col-6 offset-3 card border rounded text-white my-2" style="background-color: black">

              

                <center><h2 class="display-4 pt-5 pb-3">Delete Information</h2></center>
                
                <center>
					<p>Input the credentials of the account you wish to delete</p>
				</center>


               <br><br>

              
		<form method="post" action="delete_user.jsp">
               
               <div class="my-2 form-group">

                    <label for="name">Username : </label>

                    <input class="form-control" type="text" id="uname" name="username" placeholder="Username">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Password : </label>

                    <input class="form-control" type="text" id="pword" name="password" placeholder="Password">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">First Name : </label>

                    <input class="form-control" type="text" id="fname" name="firstname" placeholder="First Name">

                </div>
               
               <div class="my-2 form-group">

                    <label for="name">Last Name : </label>

                    <input class="form-control" type="text" id="lname" name="lastname" placeholder="Last Name">

                </div>

                <button class="btn btn-primary btn-block border mb-3 border-white" type="submit">Delete User</button>

                

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