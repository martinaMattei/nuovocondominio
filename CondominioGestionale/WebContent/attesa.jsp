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
<title>Attesa</title>
</head>
<body>

<h1>Registrazione effettuata correttamente</h1>
<br/>

<c:if test="${utente.accesso==0}">
L'amministratore deve accettare la tua richiesta di accesso
</c:if>

<c:if test="${utente.accesso==1 }">
       <jsp:forward page="home.jsp" />
</c:if>

</body>
</html>