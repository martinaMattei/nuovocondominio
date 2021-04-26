<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="it.exolab.model.Riunione"%>
<%@page import="it.exolab.model.Utente"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Utente utente = (Utente) session.getAttribute("utente");
String avviso = (String) request.getAttribute("avviso");
%>
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



	<div class="navbar">

		<h1 class="logo">Condominio</h1>
	</div>
	<div style="text-align: center; font-style: italic;">
		<h1><%if (avviso != null)
	out.println(avviso);%></h1> 
	</div>
	<div class="testo">

		<b>Benvenuto <%=utente.getNome()%></b>

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
					<li><a
						href="Servlet?op=viewUtente&id_palazzina=<c:out value="${utente.id_palazzina}"/>">
						Visualizza Riunioni </a></li>
					<li><a
						href="Servlet?op=listaPrevUtente&id_palazzina=<c:out value="${utente.id_palazzina}"/>">
							Visualizza Preventivi </a></li>
					<li><a href="info.jsp">Dati personali</a></li>
					<li><a href="Servlet?op=logoutUtente">Logout</a></li>

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