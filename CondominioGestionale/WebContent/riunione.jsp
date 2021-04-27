<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CreaRiunione</title>
<script type="text/javascript">

function validate(){
	
	var motivazione = document.getElementById("motivazione").value;
	var motivazione_valid = /^[a-zA-Z]*$/;
	var dateTimeStr = document.getElementById("data").value;

	var data = convertDateToUTC(new Date(dateTimeStr));
	var now = new Date();
	

	
	if (data == "" || data == null) {
	    form.data.focus();
	    document.getElementById('spandata').style.color = "red";
	    document.getElementById("spandata").innerHTML = "Inserisci una data";
	    return false;
	} else {
	    document.getElementById("spandata").innerHTML = "";
	}
	
	
	if (motivazione =="") {
		document.getElementById('spanname').style.color = "red";
		document.getElementById('spanname').innerHTML = " Inserisci la motivazione";
		return false;
	} else {
		document.getElementById('spanname').innerHTML = " ";
	}
	
	if (!motivazione_valid.test(motivazione)) {
		document.getElementById('spanname').style.color = "red";
		document.getElementById('spanname').innerHTML = " Inserisci una motivazione valida";
		return false;
	} else {
		document.getElementById('spanname').innerHTML = " ";
	}
	
	
	
	function convertDateToUTC(date) {
	    return new Date(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate(), date.getUTCHours(), date.getUTCMinutes(), date.getUTCSeconds()); 
	}
	
	

	if (isNaN(data.getTime()) || data <= now) {
	  form.data.focus();
	  document.getElementById('spandata').style.color = "red";
	  document.getElementById('spandata').innerHTML = "Inserisci una data valida";
	  return false;
	} else {
	  document.getElementById("spandata").innerHTML = "";
	}
	
	
}

</script>
</head>
<body>

	<h1>CREA NUOVA RIUNIONE</h1>

	<form action="Servlet?op=riunione" method="post" onsubmit="return validate()" id="form">

		<p>Data :</p>
		
		<span id="spandata" class="text-danger font-weight-bold"></span>
		<input type="datetime-local" id="data" name="data"
			value="" min="current" max="current">

		<p>Motivazione :</p>
		<span id="spanname" class="text-danger font-weight-bold"></span>
		<input type="text" name="motivazione" id="motivazione" placeholder="Motivazione"
			autocomplete="off" >
			
		<p>Palazzina :</p>
		<select name='id_palazzina'>
            <option value='1'> 1 </option>
            <option value='2'> 2 </option>
            <option value='3'> 3 </option>
       </select>
	

		<input class="btn" type="submit" value="INVIA">
		<p></p>
	</form>
	<br/>
	<a href="homeAdmin.jsp"> Torna Indietro </a>

</body>
</html>