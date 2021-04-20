<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="it.exolab.model.Riunione"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="homeAdmin.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<body>


	<div class="navbar">

		<h1 class="logo">Condominio</h1>
	</div>

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
					<li><a href="Servlet?op=view"> Riunioni </a></li>
					<li><a href="preventivo.jsp">Preventivi</a></li>
					<li><a href="info.jsp">Dati personali</a></li>

				</ul>
			</div>
		</div>
	</div>


	<script>
		$(document).ready(function() {
			$(".btn").click(function() {
				$(this).toggleClass("active");
				$(".menu").toggleClass("active");
			});
		});
	</script>
</body>
</html>