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
<title>Informazioni</title>
</head>
<body>


<h1>Questi sono i tuoi dati :</h1>
<br/>
<br/>

<c:if test="${utente.id_ruolo==2}">

 Sei il delegato di : <c:out value= "${nominativo}"></c:out>

</c:if>
<p>
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
</p>

  <a href="home.jsp"> Torna Indietro </a>

</body>
</html>