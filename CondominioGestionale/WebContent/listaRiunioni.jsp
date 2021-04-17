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



	<h1>ELENCO RIUNIONI</h1>
	
	<h2>Palazzine:</h2>
	<li><a href="#1">Palazzina 1</a> <br />
	<li><a href="#2">Palazzina 2</a> <br />
	<li><a href="#3">Palazzina 3</a> <br />
	<br/>
	<br/>
	
	<h2 id="1">Palazzina 1 </h2>
	<table width="75%" >
					<tr>
						<td><b>Data</b></td>
					</tr>
					<c:forEach var="r" items="${riunioni}">
						<c:if test="${r.id_palazzina=='1' }">
							<tr>
								<td><c:out value="${r.data}" /></td>
								<td><a
									href="Servlet?op=vriunioneid=<c:out value="${r.id}"/>"><button> Visualizza verbale riunione </button></a></td>
							</tr>
						</c:if>
					</c:forEach>

				</table>
	<h2 id="2">Palazzina 2 </h2>
	<table width="75%" >
		<tr>
						<td><b>Data</b></td>
					</tr>
					<c:forEach var="r" items="${riunioni}">
						<c:if test="${r.id_palazzina=='2' }">
							<tr>
								<td><c:out value="${r.data}" /></td>
								<td><a
									href="Servlet?op=vriunioneid=<c:out value="${r.id}"/>"><button> Visualizza verbale riunione </button></a></td>
							</tr>
						</c:if>
					</c:forEach>

				</table>
		
	<h2 id="3"> Palazzina 3 </h2>
	<table width="75%" >
		<tr>
						<td><b>Data</b></td>
					</tr>
					<c:forEach var="r" items="${riunioni}">
						<c:if test="${r.id_palazzina=='3' }">
							<tr>
								<td><c:out value="${r.data}" /></td>
								<td><a
									href="Servlet?op=vriunioneid=<c:out value="${r.id}"/>"><button> Visualizza verbale riunione </button></a></td>
							</tr>
						</c:if>
					</c:forEach>

				</table>
	
	
</body>
</html>