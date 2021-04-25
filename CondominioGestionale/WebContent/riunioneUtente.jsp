<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ page import="it.exolab.model.Riunione"%>


<%
List<Riunione> riunioni = (List<Riunione>) request.getSession().getAttribute("riunioni");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Riunioni</title>
</head>
<body>

<h1>RIUNIONI</h1>
<br/>
<h2>Lista di tutte le riunioni della tua palazzina</h2>
	<br />


	<table width="75%" >
					<tr>
						<td><b>Data</b></td>
					</tr>
					<c:forEach var="r" items="${riunioni}">
							<tr>
								<td><c:out value="${r.data}" /></td>
								<td><a
									href="Servlet?op=vriunione&id=<c:out value="${r.id}"/>"><button>Visualizza verbale riunione</button> </a></td>
							</tr>
					</c:forEach>

				</table>
				<br/>
				<a href="home.jsp"> Torna Indietro </a>


</body>
</html>