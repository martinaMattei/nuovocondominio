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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="listaUtenti.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="/scripts/js-table-filter.js" async></script>

<title>Utenti</title>
</head>
<body>

	<div class="navbar">

		<h1 class="logo">Condominio</h1>
		<h3 class="ut">utenti</h3>
<input type="text" class="table-filter" data-table="utenti" placeholder="Cerca">
		 <a
			href="homeAdmin.jsp" class="active"><i class="fa fa-fw fa-home"></i></a>


	</div>

		<table class="utenti">

			<tr>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Palazzina</th>
				<th>Ruolo</th>
				<th>Opzioni</th>
			</tr>
			<tr>

				<c:forEach var="u" items="${utente}">

					<c:if test="${u.accesso==1}">

						<tr>
							<td><c:out value="${u.nome }" /></td>
							<td><c:out value="${u.cognome}" /></td>
							<td><c:out value="${u.id_palazzina}"></c:out>
							<td><c:if test="${u.id_ruolo==1}"> Rappresentante </c:if> <c:if
									test="${u.id_ruolo==2}"> Delegato di <c:out
										value="${u.nominativo}" />
								</c:if></td>
							<td><a href="Servlet?op=blocca&id=<c:out value="${u.id}"/>"><button
										class="button">Blocca</button></a> <a
								href="Servlet?op=canc&id=<c:out value="${u.id}"/>"><button
										class="button">Cancella</button></a></td>
						</tr>
					</c:if>

				</c:forEach>
			</tr>
		</table>

		<br />

		
	<script>
			(function() {
				'use strict';

				var TableFilter = (function() {
					var Arr = Array.prototype;
					var input;

					function onInputEvent(e) {
						input = e.target;
						var table1 = document.getElementsByClassName(input
								.getAttribute('data-table'));
						Arr.forEach.call(table1, function(table) {
							Arr.forEach.call(table.tBodies, function(tbody) {
								Arr.forEach.call(tbody.rows, filter);
							});
						});
					}

					function filter(row) {
						var text = row.textContent.toLowerCase();
						var val = input.value.toLowerCase();
						row.style.display = text.indexOf(val) === -1 ? 'none'
								: 'table-row';
					}

					return {
						init : function() {
							var inputs = document
									.getElementsByClassName('table-filter');
							Arr.forEach.call(inputs, function(input) {
								input.oninput = onInputEvent;
							});
						}
					};

				})();

				TableFilter.init();
			})();
			</script>
</body>

</html>