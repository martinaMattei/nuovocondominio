<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="it.exolab.model.Utente" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="login.css">

</head>
<body>
	<div class="navbar">
		<h1 class="logo">Condominio</h1>


	</div>
	<div class="loginbox">
		<img src="images/avatar.png" class="avatar">
		<h1>Login</h1>
		<form action="Servlet?op=login" method="post">
			<p>
				<i class="fa fa-envelope" aria-hidden="true"></i> Email
			
			<input type="email" name="" placeholder="Inserisci email">
			</p>
			<p>
				<i class="fa fa-key" aria-hidden="true"></i> Password
			
			<input type="password" name="" placeholder="Inserisci password">
			</p>
			
			<input type="submit" name="" value="Accedi"> <a
				href="index.jsp">Torna indietro</a> <br> <a
				href="registrazione.jsp">Non hai un account? Registrati!</a>
		</form>

	</div>


</body>
</html>