<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi Preventivo</title>
</head>
<body>

<h1>AGGIUNGI PREVENTIVO</h1>
<br/>
<form action="Servlet?op=aggprev" method="post">

<h3>Scrivi il testo: </h3>
<textarea name="testo" rows="5" cols="40" placeholder="Scrivi il preventivo"> </textarea>
<br/>
<button class="btn">AGGIUNGI PREVENTIVO</button>
</form>

</body>
</html>