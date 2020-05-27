<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>

<html>

<head>



<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">





<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">



<title>Airlines Home CR</title>



<style>
body {
	background-color: silver;
	background-image: url("airplane.jpg");
	background-attachment: fixed;
}
</style>

</head>

<body>



	<br>
	<br>
	<br>

	<div class="container">

		<h1 class="display-1 mb-5 text-white">
			<center>Welcome Customer Rep!</center>
		</h1>





		<div class="row mt-5">



			<div class="col-6 offset-3 card border rounded text-white mr-1"
				style="background-color: black">



				<center>
					<h2 class="display-4 pt-5 pb-3">Flight Search</h2>
				</center>

				<center>
					<p>Find Flights based on what you need</p>
				</center>

				<br>
				<br>


				<form method="post" action="sortsearchbyCR.jsp">
					<div class="form-group">

						<label for="name">Flight Number : </label> <input
							class="form-control" type="text" id="name" placeholder="Flight #"
							name='flightNumber'>

					</div>



					<div class="form-group">

						<label for="name">Airline :</label> <input class="form-control"
							type="text" id="name" placeholder="Airline" name='airline'>

					</div>


 
					<div class="form-group">

						<label >Flight Type : </label> <br> <input
							type="checkbox" name="flighttype" value="One Way"> One
						Way<br> 
						<input type="checkbox" name="flighttype"
							value="Round Trip"> Round Trip<br>
							 <input
							type="checkbox" name="flighttype" value="flexible">
						Flexible

					</div>

					<br>



					<div class="form-group">

						<label>Seat Class : </label> <br> <input
							type="checkbox" name="seatclass" value="economy"> Economy<br>

						<input type="checkbox" name="seatclass" value="business">
						Business<br> 
						<input type="checkbox" name="seatclass"
							value="first"> First

					</div>

					<br>



					<div class="form-group">

						<label for="gender">Connecting Flights : </label> <br> <input
							type="checkbox" name="connectingflights" value="None">
						None<br> <input type="checkbox" name="connectingflights"
							value="1"> 1<br> <input type="checkbox"
							name="connectingflights" value="2+"> 2+

					</div>



					<div class="form-group">

						<label for="name">Departure Airport :</label> <input
							class="form-control" type="text" id="name"
							placeholder="Departure Airport" name='depairport'>

					</div>



					<div class="form-group">

						<label for="name">Departure Time :</label> <input
							class="form-control" type="text" id="name"
							placeholder="Departure Time" name='depttime'>

					</div>
					
						<div class="form-group">

						<label for="gender">Flexible Departure Time? : </label> <br> <input
							type="checkbox" name="flex" value="Yes">
						Yes<br> <input type="checkbox" name="flex"
							value="No" style="display:none"> <br> 
		
					</div>
				



					<div class="form-group">

						<label for="name">Arrival Airport :</label> <input
							class="form-control" type="text" id="name"
							placeholder="Arrival Airport" name='arrairport'>

					</div>



					<div class="form-group">

						<label for="name">Arrival Time :</label> <input
							class="form-control" type="text" id="name"
							placeholder="Arrival Time" name='arrtime'>

					</div>
					
					<div class="form-group">

						<label for="gender">Flexible Arrival Time? : </label> <br> <input
							type="checkbox" name="flexat" value="Yes">
						Yes<br> <input type="checkbox" name="flexat"
							value="No" style="display:none"> <br> 
					</div>
					
					

					<div class="form-group">

						<label for="name">Start Date :</label> <input
							class="form-control" type="text" id="name"
							placeholder="Start Date" name='startdate'>

					</div>
					
					<div class="form-group">

						<label for="gender">Flexible Start Date? : </label> <br> <input
							type="checkbox" name="flexst" value="Yes">
						Yes<br> <input type="checkbox" name="flexst"
							value="No" style="display:none"> <br> 
		
					</div>
					
					
					
					
					<div class="form-group">

						<label for="name">End Date :</label> <input
							class="form-control" type="text" id="name"
							placeholder="End Date" name='enddate'>

					</div>
					
					<div class="form-group">

						<label for="gender">Flexible End  Date? : </label> <br> <input
							type="checkbox" name="flexnd" value="Yes">
						Yes<br> <input type="checkbox" name="flexnd"
							value="No" style="display:none"> <br> 
		
					</div>
					
			


<!-- 

					<label for="name">Date Range : </label>

					<form class="form-inline">

						<input class="form-control mr-3 mb-md-5 mb-2" type="text"
							id="name" placeholder="Start Date" name='startdate'> <input
							class="form-control mb-5" type="text" id="name"
							placeholder="End Date" name='enddate'>



					</form>

 -->
					<button
						class="btn btn-primary btn-block mb-5 mt-2 border border-white"
						type="submit" id="search">Search</button>
				</form>


			</div>



		</div>

		<br>
		<br>





		


		





	</div>







	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

</body>

</html>