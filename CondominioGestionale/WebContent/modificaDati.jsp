<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="it.exolab.model.Utente"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
Utente utente = (Utente) session.getAttribute("utente");
String nominativo = (String) session.getAttribute("nominativo");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifica dati</title>
<script type="text/javascript">

	function validation() {
		var telefono = document.getElementById("tel").value;
		var email = document.getElementById("mail").value;
		var password = document.getElementById("pwd").value;
		var conferma = document.getElementById("conf").value;
		var email_valid = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-]{2,})+.)+([a-zA-Z0-9]{2,})+$/;
		
		
		if (telefono == "") {
			document.getElementById('spantel').style.color = "red";
			document.getElementById('spantel').innerHTML = " Inserisci un telefono";
			return false;
		}else{
			document.getElementById('spantel').innerHTML = " ";
		}
		if (isNaN(telefono)) {
			document.getElementById('spantel').style.color = "red";
			document.getElementById('spantel').innerHTML = " Inserisci solo caratteri numerici";
			return false;
		}else{
			document.getElementById('spantel').innerHTML = " ";
		}
		if (telefono.length != 10) {
			document.getElementById('spantel').style.color = "red";
			document.getElementById('spantel').innerHTML = " Il numero di telefono deve avere 10 cifre";
			return false;
		}else{
			document.getElementById('spantel').innerHTML = " ";
			if (email == "") {
				document.getElementById('spanmail').style.color = "red";
				document.getElementById('spanmail').innerHTML = " Inserisci una email";
				return false;
			}else{
				document.getElementById('spanmail').innerHTML = " ";
			}
			if (email.indexOf('@') <= 0) {
				document.getElementById('spanmail').style.color = "red";
				document.getElementById('spanmail').innerHTML = " Email non valida";
				return false;
			}else{
				document.getElementById('spanmail').innerHTML = " ";
			}
			if ((email.charAt(email.length - 4) != '.')
					&& (email.charAt(email.length - 3) != '.')) {
				document.getElementById('spanmail').style.color = "red";
				document.getElementById('spanmail').innerHTML = " Email non valida";
				return false;
			}else{
				document.getElementById('spanmail').innerHTML = " ";
			}
			if (password == "") {
				document.getElementById('spanpwd').style.color = "red";
				document.getElementById('spanpwd').innerHTML = " Inserisci una password";
				return false;
			}else{
				document.getElementById('spanpwd').innerHTML = " ";
			}
			if ((password.length < 8) || (password.length > 20)) {
				document.getElementById('spanpwd').style.color = "red";
				document.getElementById('spanpwd').innerHTML = " La password deve avere tra 8 e 20 caratteri";
				return false;
			}else{
				document.getElementById('spanpwd').innerHTML = " ";
			}

			if (conferma == "") {
				document.getElementById('spanconf').style.color = "red";
				document.getElementById('spanconf').innerHTML = " Conferma la password";
				return false;
			}else{
				document.getElementById('spanconf').innerHTML = " ";
			}
			if (password != conferma) {
				document.getElementById('spanconf').style.color = "red";
				document.getElementById('spanconf').innerHTML = " Le password non corrispondono";
				return false;
			}else{
				document.getElementById('spanconf').innerHTML = " ";
			}
		
	}
		
</script>	
</head>
<body>

	<h1>MODIFICA DATI</h1>

	<c:if test="${utente.id_ruolo==2}">

 Sei il delegato di : <c:out value="${nominativo}"></c:out>

	</c:if>
	<p>
		Nome :  <c:out value="${utente.nome}"></c:out>
		<br /> 
		<br /> 
		Cognome :  <c:out value="${utente.cognome}"></c:out>
		<br />
		<br /> 
	    Palazzina :  <c:out value="${utente.id_palazzina}"></c:out>
		<br /> 
		<br /> 
		<form action="Servlet?op=modifica&id=<c:out value="${utente.id}"/>" method="post" onsubmit="return validation()" name="invio" enctype="multipart/form-data"  >
		
		Telefono : <span id="spantel" class="text-danger font-weight-bold"></span> 
				   <input type="text" name="telefono" id="tel" >
		<br />
		<br /> 
	    Email : <span id="spanmail" class="text-danger font-weight-bold"></span> 
				 <input type="email" name="email" id="mail" autocomplete="off">

	    <br />
	    <br />  
	    Password : 	<span id="spanpwd" class="text-danger font-weight-bold"></span> 
					<input type="password" id="pwd" name="password" autocomplete="off">
	    <br />
	    <br /> 
	    Conferma Password: <span id="spanconf" class="text-danger font-weight-bold"></span> 
				           <input type="password" name="conferma" id="conf" >
	    <br />
	    <br /> 
	    <br /> 
	    <br /> 
	    
	    <input type="submit" value="Modifica" >
	     </form>
	     
	     <br/>
	     <br /> 
	     <a href="info.jsp"> Torna Indietro </a>
	     <br/>
	     <br /> 
	     <a href="home.jsp"> Vai alla Home </a>
</body>
</html>