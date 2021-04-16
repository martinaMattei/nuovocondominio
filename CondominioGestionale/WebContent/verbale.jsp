<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scrivi Verbale</title>
</head>
<body>

<h1>SCRIVI VERBALE</h1>

<form action="Servlet?op=verbale" method="post">

<br/>

<p>Scegli data :</p>
		<input type="datetime-local" id="data" name="data"
			value="" min="current" max="current">
<br> 
<p>Palazzina :</p>
		<input type="text" name="id_palazzina" placeholder="Numero Palazzina"
			required="required">
<br/>
<br/>
<p> Numero verbale: <p>
   <input type="text" name="n_verbale" placeholder="Numero Verbale"
			required="required">
<br/>
<br/>
 <p> Scrivi il verbale: <p>
 
<textarea name="testo" rows="5" cols="40" placeholder="Scrivi il verbale">
  
</textarea>

<button class="btn">AGGIUNGI VERBALE</button>

</form>

</body>
</html>