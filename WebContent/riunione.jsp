<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CreaRiunione</title>
</head>
<body>

	<h1>CREA NUOVA RIUNIONE</h1>

	<form action="Servlet?op=riunione" method="post">

		<p>Data :</p>
		<input type="datetime-local" id="data" name="data"
			value="" min="current" max="current">

		<p>Motivazione :</p>
		<input type="text" name="motivazione" placeholder="Motivazione"
			required="required">
		<p>Palazzina :</p>
		<input type="text" name="id_palazzina" placeholder="Numero Palazzina"
			required="required">

		<button class="btn">INVIA</button>
		<p></p>
	</form>



</body>
</html>