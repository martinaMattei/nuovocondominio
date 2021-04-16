<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="it.exolab.model.Utente"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
    
<%
Utente utente = (Utente) session.getAttribute("utente");
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Informazioni</title>
</head>
<body>

<h1>Questi sono i tuoi dati :</h1>
<br/>
<br/>
Nome : <%= utente.getNome() %>
<br/>
Cognome : <%=utente.getCognome()%>
<br/>
Telefono : <%=utente.getTelefono()%>
<br/>
Email : <%=utente.getEmail()%>
<br/>
Palazzina : <%=utente.getId_palazzina()%>
<br/>
<br/>


  <a href="home.jsp"> Torna Indietro </a>

</body>
</html>