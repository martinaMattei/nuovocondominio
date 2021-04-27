<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ page import="it.exolab.model.Utente"%>

<%
	List<Utente> utente = (List<Utente>) request.getSession().getAttribute("utente");
String nominativo = (String) session.getAttribute("nominativo");
String errore = request.getAttribute("avviso") != null ? (String) request.getAttribute("avviso") : "";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AccettaUtenti</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
	

<link rel="stylesheet" href="accetta.css">
</head>
<body>

	<div class="navbar">

		<h1 class="logo">Condominio</h1>
<h3 class="ut">utenti da accettare</h3>
	<a href="homeAdmin.jsp" class="active"><i class="fa fa-fw fa-home"></i></a>

	</div>

	<div class="avviso">
		<c:if test="${count==0}">
			<br />
			<c:out value="${avviso}"></c:out>
		</c:if>
	</div>

	<c:if test="${count!=0}">

		
			<table>
				<tr>
					<th>Nome</th>
					<th>Cognome</th>
					<th>Ruolo</th>
					<th>Palazzina</th>
					<th>Opzioni</th>
				</tr>
				<tr>

					<c:forEach var="u" items="${utente}">
						<c:if test="${u.accesso==0}">

							<tr>
								<td><c:out value="${u.nome }" /></td>
								<td><c:out value="${u.cognome}" /></td>

								<td><c:if test="${u.id_ruolo==1}"> Rappresentante </c:if> <c:if
										test="${u.id_ruolo==2}"> Delegato di <c:out
											value="${u.nominativo}" />
									</c:if></td>
								<td><c:out value="${u.id_palazzina}" /></td>
								<td><a href="Servlet?op=si&id=<c:out value="${u.id}"/>"><button>Accetta</button></a>
									<a href="Servlet?op=no&id=<c:out value="${u.id}"/>"><button>Cancella</button></a></td>

							</tr>
						</c:if>
					</c:forEach>
				</tr>
			</table>
			<div class="tot">
			<br /> <a href="Servlet?op=cancTot"><button>Cancella Tutti
					tutti</button></a> <a href="Servlet?op=accettaTot"><button>Accetta
					tutti</button></a>
					</div>
	</c:if>


	

</body>
</html>