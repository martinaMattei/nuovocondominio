<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi Preventivo</title>
</head>
<script type="text/javascript">
function validate() {
		var testo = document.getElementById("testo").value;

		
		if (testo.val== "" || testo.val == null) {
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
<br/>
<form action="Servlet?op=aggprev" method="post" onsubmit="return validate()" id="form">

<h3>Preventivo per la palazzina numero:</h3>
<select name='id_palazzina'>
            <option value='1'> 1 </option>
            <option value='2'> 2 </option>
            <option value='3'> 3 </option>
       </select>
<br/>
<h3>Scrivi il testo: </h3>
		<span id="spantesto" class="text-danger font-weight-bold"></span> 
<textarea id="testo" name="testo" rows="5" cols="40" placeholder="Scrivi il preventivo"> </textarea>
<br/>
<button class="btn">AGGIUNGI PREVENTIVO</button>
</form>
<br/>
<a href="Servlet?op=listaPrev">Torna Indietro</a>
</body>
</html>