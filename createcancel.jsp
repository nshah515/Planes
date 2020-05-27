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



<title>Create / Cancel</title>



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
			<center>Create / Cancel Reservation</center>
		</h1>





		<div class="row mt-5">



			<div class="col card border rounded text-white mr-1"
				style="background-color: black">



				<center>
					<h2 class="display-4 pt-5 pb-3">Create</h2>
				</center>

				<center>
					<p>Reserve a flight</p>
				</center>

				<br> <br>

				<form action="createReservation.jsp" method="post">

					<div class="form-group">

						<label for="name">Flight Number : </label> <input
							class="form-control" type="text" id="name" placeholder="Flight #"
							name="flightnum">

					</div>

					<label for="name">Seat Class : </label>

					<ul class="list-unstyled">
						<li><input type="radio" value="economy" name="class">
							Economy<br></li>
						<li><input type="radio" value="business" name="class">
							Business<br></li>
						<li><input type="radio" value="first" name="class">
							First<br></li>
					</ul>

					<button
						class="btn btn-primary btn-block mb-5 mt-2 border border-white"
						type="submit">Reserve</button>

				</form>

				<p>please find flight number by searching here</p>

				<button
					class="btn btn-primary btn-block mb-5 mt-0 border border-white"
					type="submit">Search</button>







			</div>

			<div class="col card border ml-1 rounded text-white"
				style="background-color: black">



				<center>
					<h2 class="display-4 pt-5 pb-3">Cancel</h2>
				</center>

				<center>
					<p>Cancel a flight</p>
				</center>

				<br> <br>


				<form action="cancelReservation.jsp" method="post">
					<div class="form-group">

						<label for="name">Flight Number : </label> <input
							class="form-control" type="text" id="name" placeholder="Flight #"
							name="inputFlightNumberCancel">

					</div>



					<button
						class="btn btn-primary btn-block mb-5 mt-2 border border-white"
						type="submit">Cancel</button>



					<p>please find flight number by viewing your flights</p>
					
				</form>

			</div>
			
			</a>

		</div>

	<a class="nav-link text-light" href="viewupcoming.jsp">
						<button
							class="btn btn-primary btn-block mb-5 mt-0 border border-white"
							type="submit">Upcoming Flights</button>
					</a>



		<br>


<a class="nav-link text-light"  href="home.jsp">

				<button
					class="btn btn-primary btn-block mb-1 mt-0 border border-white"
					type="submit">Back to Main Menu</button>
			</a>
			<a class="nav-link text-light"  href="login_page.jsp">

				<button
					class="btn btn-primary btn-block mb-5 mt-0 border border-white"
					type="submit">Logout</button>


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