<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ page import="it.exolab.model.Utente"%>

<%
List<Utente> utente = (List<Utente>) request.getSession().getAttribute("utente");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AccettaUtenti</title>
</head>
<body>


	<h1>Utenti da accettare</h1>

	<table width="75%">



		<tr>
			<td><b>Nome</b></td>
			<td><b>Cognome</b></td>
			<td><b>Palazzina</b></td>
			<td><b>Ruolo</b></td>
		</tr>

		<c:forEach var="u" items="${utente}">
			<c:if test="${u.accesso==0}">

				<tr>
					<td><c:out value="${u.nome }" /></td>
					<td><c:out value="${u.cognome}" /></td>
					<td><c:out value="${u.id_palazzina}" /></td>
					<td><c:if test="${u.id_ruolo==1}"> Rappresentante </c:if> <c:if test="${u.id_ruolo==2}"> Delegato di <c:out value="${u.nominativo}"/></c:if></td>
					<td><a href="Servlet?op=si&id=<c:out value="${u.id}"/>"><button>Accetta</button></a></td>
					<td><a href="Servlet?op=no&id=<c:out value="${u.id}"/>"><button>Cancella</button></a></td>
				</tr>
			</c:if>
		</c:forEach>



	</table>
	<br />
	<a href="homeAdmin.jsp"> Torna Indietro </a>

</body>
</html>