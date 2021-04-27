<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi preventivo</title>
</head>
<script>
	function validate() {
		var testo = document.getElementById("testo").value;

		if (testo.val == "" || testo.val == null) {
			form.testo.focus();
			document.getElementById('spantesto').style.color = "red";
			document.getElementById('spantesto').innerHTML = "Il testo è vuoto";

			return false;
		} else {
			document.getElementById('spantesto').innerHTML = " ";
		}

	}
</script>
<body>
	<h1>AGGIUNGI PREVENTIVO</h1>
	<br />
	<form action="Servlet?op=aggprevUtente" method="post"
		onsubmit="return validate()" id="form">



		<h3>Scrivi il testo:</h3>
		<textarea id="testo" name="testo" rows="5" cols="40"
			placeholder="Scrivi il preventivo"> </textarea>
		<span id="spantesto" class="text-danger font-weight-bold"></span> <br />
		<button class="btn">AGGIUNGI PREVENTIVO</button>
	</form>
	<br />

	<a
		href="Servlet?op=listaPrevUtente&id_palazzina=<c:out value="${utente.id_palazzina}"/>">
		Torna Indietro</a>
<body>

</body>
</html>