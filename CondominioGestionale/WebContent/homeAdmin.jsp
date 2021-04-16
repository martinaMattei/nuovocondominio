<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="homeAdmin.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>

<div class="testo">
<b>Benvenuto</b>
</div>
	<div class="wrapper">
		<div class="container">
			<div class="btn">
				<div class="one"></div>
				<div class="two"></div>
				<div class="three"></div>
			</div>
			<div class="menu">
				<ul>
					<li><a href="riunione.jsp">Crea Riunione</a></li>






					<li><a href="#">Riunioni Palazzina A</a></li>
					<li><a href="#">Riunioni Palazzina B</a></li>
					<li><a href="#">Riunione Palazzina C</a></li>

					<li><a href="verbale.jsp">Carica Verbale</a></li>
					<li><a href="accetta.jsp">Accetta Utenti</a></li>

				</ul>
			</div>
		</div>
	</div>


	<script>
		$(document).ready(function(){
		  	$(".btn").click(function(){
			  $(this).toggleClass("active");
			  $(".menu").toggleClass("active");
			});
		});
	</script>
</body>
</html>