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
<br/>

<a href="aggiungiPreventivo.jsp"> Aggiungi preventivo </a>
<br/>
<br/>

<h2>Palazzine:</h2>
	<li><a href="#1">Palazzina 1</a> <br />
	<li><a href="#2">Palazzina 2</a> <br />
	<li><a href="#3">Palazzina 3</a> <br />
	<br/>
	<br/>
	
	
	
	<h2 id="1">Palazzina 1 </h2>
	
	<table width="75%" >
	
	<c:forEach var="p" items="${preventivo}">
	  <c:if test="${p.id_palazzina=='1' }">
	  
	      <tr>
	  
	  <td><b>Preventivo : <c:if test="${p.id_admin==1}">Amministratore</c:if> <c:out value="${p.nominativo }"></c:out></b></td>
					
				</tr>	
						
							<tr>
								<td><c:out value="${p.testo}" /></td>
							</tr>
						</c:if>
					</c:forEach>
			</table>		
					

<h2 id="2">Palazzina 2 </h2>
	
	
	
	<table width="75%" >
	
	<c:forEach var="p" items="${preventivo}">
	  <c:if test="${p.id_palazzina=='2' }">
	  
	      <tr>
	  
	  <td><b>Preventivo : <c:if test="${p.id_admin==1}">Amministratore</c:if> <c:out value="${p.nominativo }"></c:out></b></td>
	     
					
				</tr>	
						
							<tr>
								<td><c:out value="${p.testo}" /></td>
							</tr>
						</c:if>
					</c:forEach>
			</table>		
				
				<h2 id="3">Palazzina 3 </h2>
	
	
	
	<table width="75%" >
	
	<c:forEach var="p" items="${preventivo}">
	  <c:if test="${p.id_palazzina=='3' }">
	  
	      <tr>
	  
	<td><b>Preventivo : <c:if test="${p.id_admin==1}">Amministratore</c:if> <c:out value="${p.nominativo }"></c:out></b></td>
					
				</tr>	
						
							<tr>
								<td><c:out value="${p.testo}" /></td>
							</tr>
						</c:if>
					</c:forEach>
			</table>		
			<br/>
								
  <a href="homeAdmin.jsp">Torna Indietro</a>
</body>
</html>