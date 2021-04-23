<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ page import="it.exolab.model.Preventivo"%>


<%
List<Preventivo> preventivo = (List<Preventivo>) request.getSession().getAttribute("preventivo");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Preventivi</title>
</head>
<body>

	<h1>PREVENTIVO</h1>
	<br />

	<a href="aggiugiPreventivoU.jsp"> Aggiungi preventivo </a>
	<br />
	<br />

	<h2>Lista preventivi della tua palazzina</h2>
	<br />


	<table width="75%">

		<c:forEach var="p" items="${preventivo}">

				<tr>

					<td><b>Preventivo : <c:if test="${p.id_admin==1}">Amministratore</c:if> <c:if test="${p.id_admin!=1}"><c:out value="${p.nominativo}"/></c:if>
					</b></td>

				</tr>

				<tr>
					<td><c:out value="${p.testo}" /></td>
				</tr>
		</c:forEach>
	</table>


</body>
</html>