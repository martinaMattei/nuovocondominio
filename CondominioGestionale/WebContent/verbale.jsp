<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String avviso1 = (String) request.getAttribute("avviso1");
String errore = (String) request.getAttribute("errore");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scrivi Verbale</title>
<script type="text/javascript">
	function validate() {

		var numero = document.getElementById("numero").value;
        var data =  document.getElementById("data").value;
        var testo = document.getElementById("testo");
        
    	if (data == "" || data == null) {
			form.data.focus();
			document.getElementById('spandata').style.color = "red";
			document.getElementById("spandata").innerHTML = "Inserisci una data";
			return false;
		} else {
			document.getElementById("spandata").innerHTML = "";
		}
		
		if (numero == "") {
			document.getElementById('spannumero').style.color = "red";
			document.getElementById('spannumero').innerHTML = " Inserisci il numero del verbale";
			return false;
		}else{
			document.getElementById('spannumero').innerHTML = " ";
		}
		
		if (isNaN(numero)) {
			document.getElementById('spannumero').style.color = "red";
			document.getElementById('spannumero').innerHTML = " Inserisci solo caratteri numerici";
			return false;
		}else{
			document.getElementById('spannumero').innerHTML = " ";
		}

		 if (testo.value.replace(/ /g,'').length) {
		       return true;
		    } else {
		       alert("Inserisci un testo ");
		       return false;  
	    }
		
	}
</script>
</head>
<body>

	<h1>SCRIVI VERBALE</h1>
	<br />
	<%
	if (avviso1 != null)
		out.println(avviso1);
	%>
	<%
	if (errore != null)
		out.println(errore);
	%>

	<form action="Servlet?op=verbale" method="post" onsubmit="return validate()" id="form">

		<br />

		<p>Scegli data :</p>
		<span id="spandata" class="text-danger font-weight-bold"></span> <input
			type="datetime-local" id="data" name="data" value="" min="current"
			max="current"> <br>
		<p>Palazzina :</p>
		<select name='id_palazzina'>
			<option value='1'>1</option>
			<option value='2'>2</option>
			<option value='3'>3</option>
		</select> <br /> <br />
		<p>Numero verbale:
		<p>
		     <span id="spannumero" class="text-danger font-weight-bold"></span> 
			<input type="text" id ="numero" name="n_verbale" placeholder="Numero Verbale"
				autocomplete="off" > <br /> <br />
		<p>Scrivi il verbale:
		<p>
		<span id="spantesto" class="text-danger font-weight-bold"></span>
			<textarea id ="testo" name="verbale" rows="5" cols="40"
				placeholder="Scrivi il verbale" autocomplete="off">
  
</textarea>

			<input type="submit" value="AGGIUNGI VERBALE" >
	</form>
	<br />
	<a href="homeAdmin.jsp"> Torna Indietro </a>

</body>
</html>