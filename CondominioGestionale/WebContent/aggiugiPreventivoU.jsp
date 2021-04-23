<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi preventivo</title>
</head>


<h1>AGGIUNGI PREVENTIVO</h1>
<br/>
<form action="Servlet?op=aggprevUtente" method="post">



<h3>Scrivi il testo: </h3>
<textarea name="testo" rows="5" cols="40" placeholder="Scrivi il preventivo"> </textarea>
<br/>
<button class="btn">AGGIUNGI PREVENTIVO</button>
</form>
<br/>

<a href="Servlet?op=listaPrevUtente&id_palazzina=<c:out value="${utente.id_palazzina}"/>"> Torna Indietro</a>



<body>

</body>
</html>