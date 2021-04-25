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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Utenti</title>
</head>
<body>


	<h1 align="center">Utenti</h1>
	<br />
	<br />

	<div class="container">
		<div class="row">
			<div class="col-sm">

				<h5>Palazzina 1</h5>
				<br />
				<table width="75%">
					<tr>
						<td><b>Nome</b></td>
						<td><b>Cognome</b></td>
						<td><b>Ruolo</b></td>
					</tr>

					<c:forEach var="u" items="${utente}">
						<c:if test="${u.id_palazzina==1}">
							<c:if test="${u.accesso==1}">

								<tr>
									<td><c:out value="${u.nome }" /></td>
									<td><c:out value="${u.cognome}" /></td>
									<td><c:if test="${u.id_ruolo==1}"> Rappresentante </c:if>
										<c:if test="${u.id_ruolo==2}"> Delegato di <c:out
												value="${u.nominativo}" />
										</c:if></td>
									<td><a
										href="Servlet?op=blocca&id=<c:out value="${u.id}"/>"><button>Blocca</button></a></td>
									<td><a href="Servlet?op=canc&id=<c:out value="${u.id}"/>"><button>Cancella</button></a></td>
								</tr>
							</c:if>
						</c:if>
					</c:forEach>
				</table>
               <br />
	          <a href="homeAdmin.jsp"> Torna Indietro </a>
			</div>
			<div class="col-sm">

				<h5>Palazzina 2</h5>
				<br />
				<table width="75%">
					<tr>
						<td><b>Nome</b></td>
						<td><b>Cognome</b></td>
						<td><b>Ruolo</b></td>
					</tr>

					<c:forEach var="u" items="${utente}">
						<c:if test="${u.id_palazzina==2}">
							<c:if test="${u.accesso==1}">

								<tr>
									<td><c:out value="${u.nome }" /></td>
									<td><c:out value="${u.cognome}" /></td>
									<td><c:if test="${u.id_ruolo==1}"> Rappresentante </c:if>
										<c:if test="${u.id_ruolo==2}"> Delegato di <c:out
												value="${u.nominativo}" />
										</c:if></td>
									<td><a
										href="Servlet?op=blocca&id=<c:out value="${u.id}"/>"><button>Blocca</button></a></td>
									<td><a href="Servlet?op=canc&id=<c:out value="${u.id}"/>"><button>Cancella</button></a></td>
								</tr>
							</c:if>
						</c:if>
					</c:forEach>
				</table>

			</div>
			<div class="col-sm">

				<h5>Palazzina 3</h5>
				<br />
				<table width="75%">
					<tr>
						<td><b>Nome</b></td>
						<td><b>Cognome</b></td>
						<td><b>Ruolo</b></td>
					</tr>

					<c:forEach var="u" items="${utente}">
						<c:if test="${u.id_palazzina==3}">
							<c:if test="${u.accesso==1}">

								<tr>
									<td><c:out value="${u.nome }" /></td>
									<td><c:out value="${u.cognome}" /></td>
									<td><c:if test="${u.id_ruolo==1}"> Rappresentante </c:if>
										<c:if test="${u.id_ruolo==2}"> Delegato di <c:out
												value="${u.nominativo}" />
										</c:if></td>
									<td><a
										href="Servlet?op=blocca&id=<c:out value="${u.id}"/>"><button>Blocca</button></a></td>
									<td><a href="Servlet?op=canc&id=<c:out value="${u.id}"/>"><button>Cancella</button></a></td>
								</tr>
							</c:if>
						</c:if>
					</c:forEach>
				</table>
			   
			</div>
		</div>
	</div>
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>