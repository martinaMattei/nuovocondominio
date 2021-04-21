<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Preventivi</title>
</head>
<body>

<h1>PREVENTIVO</h1>
<br/>

<li> <a href="aggiungiPreventivo.jsp"> Aggiungi preventivo </a></li>
<br/>
<br/>

<h2>Palazzine:</h2>
	<li><a href="#1">Palazzina 1</a> <br />
	<li><a href="#2">Palazzina 2</a> <br />
	<li><a href="#3">Palazzina 3</a> <br />
	<br/>
	<br/>
	
	
	<c:forEach var="p" items="${preventivi}">
						<c:if test="${p.id_palazzina=='1' }">
							<tr>
								<td><c:out value="${p.utente.nome}" /></td>  preventivo di "nome e cognome", palazzina "numero" , testo 
								
							</tr>
						</c:if>
					</c:forEach>

</body>
</html>