<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>

<title>Registrazione</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<link rel="stylesheet" href="regDel.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script type="text/javascript">
	function validation() {

		var nome = document.getElementById("name").value;
		var cognome = document.getElementById("sname").value;
		var telefono = document.getElementById("tel").value;
	
		var email = document.getElementById("mail").value;
		var password = document.getElementById("pwd").value;
		var conferma = document.getElementById("conf").value;
		var nominativo = document.getElementById("nom").value;
		var paldel = document.getElementById("pdel").value;
		var file = document.getElementById("upfile").value;
		var nome_valid = /^[a-zA-Z]*$/;
		var cognome_valid = /^[a-zA-Z]*$/;
		//var email_valid = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-]{2,})+.)+([a-zA-Z0-9]{2,})+$/;

		if (nome == "") {
			document.getElementById('spanname').style.color = "red";
			document.getElementById('spanname').innerHTML = " Inserisci un nome";
			return false;
		} else {
			document.getElementById('spanname').innerHTML = " ";
		}
		if (!nome_valid.test(nome)) {
			document.getElementById('spanname').style.color = "red";
			document.getElementById('spanname').innerHTML = " Inserisci un nome valido";
			return false;
		} else {
			document.getElementById('spanname').innerHTML = " ";
		}
		if (cognome == "") {
			document.getElementById('spansname').style.color = "red";
			document.getElementById('spansname').innerHTML = " Inserisci un cognome";
			return false;
		}else{
			document.getElementById('spansname').innerHTML = " ";
		}
		if (!cognome_valid.test(cognome)) {
			document.getElementById('spansname').style.color = "red";
			document.getElementById('spansname').innerHTML = " Inserisci un cognome valido";
			return false;
		}else{
			document.getElementById('spansname').innerHTML = " ";
		}
		if (telefono == "") {
			document.getElementById('spantel').style.color = "red";
			document.getElementById('spantel').innerHTML = " Inserisci un telefono";
			return false;
		}else{
			document.getElementById('spantel').innerHTML = " ";
		}
		if (isNaN(telefono)) {
			document.getElementById('spantel').style.color = "red";
			document.getElementById('spantel').innerHTML = " Inserisci solo caratteri numerici";
			return false;
		}else{
			document.getElementById('spantel').innerHTML = " ";
		}
		if (telefono.length != 10) {
			document.getElementById('spantel').style.color = "red";
			document.getElementById('spantel').innerHTML = " Il numero di telefono deve avere 10 cifre";
			return false;
		}else{
			document.getElementById('spantel').innerHTML = " ";
		}

		if (email == "") {
			document.getElementById('spanmail').style.color = "red";
			document.getElementById('spanmail').innerHTML = " Inserisci una email";
			return false;
		}else{
			document.getElementById('spanmail').innerHTML = " ";
		}
		if (email.indexOf('@') <= 0) {
			document.getElementById('spanmail').style.color = "red";
			document.getElementById('spanmail').innerHTML = " Email non valida";
			return false;
		}else{
			document.getElementById('spanmail').innerHTML = " ";
		}
		if ((email.charAt(email.length - 4) != '.')
				&& (email.charAt(email.length - 3) != '.')) {
			document.getElementById('spanmail').style.color = "red";
			document.getElementById('spanmail').innerHTML = " Email non valida";
			return false;
		}else{
			document.getElementById('spanmail').innerHTML = " ";
		}
		if (password == "") {
			document.getElementById('spanpwd').style.color = "red";
			document.getElementById('spanpwd').innerHTML = " Inserisci una password";
			return false;
		}else{
			document.getElementById('spanpwd').innerHTML = " ";
		}
		if ((password.length < 8) || (password.length > 20)) {
			document.getElementById('spanpwd').style.color = "red";
			document.getElementById('spanpwd').innerHTML = " La password deve avere tra 8 e 20 caratteri";
			return false;
		}else{
			document.getElementById('spanpwd').innerHTML = " ";
		}

		if (conferma == "") {
			document.getElementById('spanconf').style.color = "red";
			document.getElementById('spanconf').innerHTML = " Conferma la password";
			return false;
		}else{
			document.getElementById('spanconf').innerHTML = " ";
		}
		if (password != conferma) {
			document.getElementById('spanconf').style.color = "red";
			document.getElementById('spanconf').innerHTML = " Le password non corrispondono";
			return false;
		}else{
			document.getElementById('spanconf').innerHTML = " ";
		}
		if (nominativo == "") {
			document.getElementById('spandel').style.color = "red";
			document.getElementById('spandel').innerHTML = " Inserisci Nome e Cognome del rappresentante";
			return false;
		} else {
			document.getElementById('spandel').innerHTML = " ";
		}
		if (paldel == "") {
			document.getElementById('spanpdel').style.color = "red";
			document.getElementById('spanpdel').innerHTML = "Inserisci la palazzina del rappresentante"
			return false;
		} else {
			document.getElementById('spanpdel').innerHTML = " ";
		}
		if ((paldel < 1) || (paldel > 3)) {
			document.getElementById('spanpdel').style.color = "red";
			document.getElementById('spanpdel').innerHTML = " Le palazzine vanno da 1 a 3!";
			return false;
		}else{
			document.getElementById('spanpdel').innerHTML = " ";
		}
		
		if (file == "") {
			document.getElementById('spanfile').style.color = "red";
			document.getElementById('spanfile').innerHTML = " Inserisci la carta d'identità";
			return false;
		}

	}
</script>
</head>
<body>
	<div class="navbar">
		<h1 class="logo">Condominio</h1>
	</div>
	<div class="regbox">
		<img src="images/avatar.png" class="avatar">
		<h1>Registrazione</h1>
		<form action="Servlet?op=regdel" method="post" name="invio"
			enctype="multipart/form-data" onsubmit="return validation()">
			
			<p>
				<i class="fa fa-user-circle" aria-hidden="true"></i> 
				Nome * 
				<span id="spanname" class="text-danger font-weight-bold"></span> 
				<input type="text" name="nome" id="name" placeholder="Nome">


			</p>
			<p>
				<i class="fa fa-user-circle" aria-hidden="true"></i> 
				Cognome * 
				<span id="spansname" class="text-danger font-weight-bold"></span> 
				<input type="text" name="cognome" id="sname" placeholder="Cognome">

			</p>
			<p>
				<i class="fa fa-phone-square" aria-hidden="true"></i>
				 Telefono * 
				 <span id="spantel" class="text-danger font-weight-bold"></span> 
				 <input type="text" name="telefono" id="tel" placeholder="Telefono">

			</p>
			<p>
				<i class="fa fa-envelope" aria-hidden="true"></i>
				 Email * 
				 <span id="spanmail" class="text-danger font-weight-bold"></span> 
				 <input type="email" name="email" id="mail" placeholder="Email" autocomplete="off">

			</p>
			<p>
				<i class="fa fa-key" aria-hidden="true"></i><i class="fa fa-eye"id="eye"></i> 
					Password * 
					<span id="spanpwd" class="text-danger font-weight-bold"></span> 
					<input type="password" id="pwd" name="password" placeholder="Password" autocomplete="off">

			</p>
			<p>
				<i class="fa fa-key" aria-hidden="true"></i> 
				Conferma Password * 
				<span id="spanconf" class="text-danger font-weight-bold"></span> 
				<input type="password" name="conferma" id="conf" placeholder="Conferma password">

			</p>
			
			<p>
			<i class="fa fa-user-circle" aria-hidden="true"></i> 
			Delegato di: * 
			<span id="spandel" class="text-danger font-weight-bold"></span> 
			<input type="text" name="nominativo" id="nom" placeholder="Nome e Cognome" autocomplete="off"> 
			</p>
			
			<p>
			<i class="fa fa-address-card-o"	aria-hidden="true"></i> 
			Palazzo delegato: *
			<span id="spanpdel" class="text-danger font-weight-bold"></span> 
			<input type="text" name="id_palazzina" id="pdel" placeholder="Nome palazzina" autocomplete="off"> 
			<p>
				<input type="hidden" name="MAX_FILE_SIZE" value="30000" id="uploadfile" /> 
				Carta d'identit&agrave; 
				<span id="spanfile" class="text-danger font-weight-bold"></span> 
				<input type="file" name="file2" id="upfile" />

			</p>
			<input class="btn" type="submit" value="Registrati"> <br />

			<input class="btn" type="reset" value="Reset">
		</form>
	</div>

	<script>
		var pwd = document.getElementById('pwd');
		var eye = document.getElementById('eye');

		eye.addEventListener('click', togglePass);

		function togglePass() {
			eye.classList.toggle('active');
			(pwd.type == 'password') ? pwd.type = 'pwd' : pwd.type = 'password';

		}
	</script>
</body>
</html>
