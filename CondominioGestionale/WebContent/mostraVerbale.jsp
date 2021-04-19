<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@page import="it.exolab.model.Riunione"%>

<%
Riunione riunione = (Riunione) session.getAttribute("riunione");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verbale della riunione</title>
</head>
<body>

	<h1>VERBALE</h1>
	
	<c:if test="${riunione.verbale==null}">
			<h3>"Il verbale non è stato ancora caricato"</h3>
		</c:if>

	
		
		<c:if test="${riunione.verbale!=null}">
   Questo è il verbale numero <c:out value="${riunione.n_verbale}"></c:out>, in data <c:out
				value="${riunione.data}"></c:out>,  della palazzina <c:out
				value="${riunione.id_palazzina}"></c:out>
			<br/>
			<h3></h3>
			<c:out value="${riunione.verbale}"></c:out>
		</c:if>

	<br/>
	<br/>
	 <form action="Servlet?op=view" method="post">
                    	<input type="submit" value="Torna Indietro">
                    </form> 

</body>
</html>