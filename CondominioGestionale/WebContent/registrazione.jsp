<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>

<title>Registrazione</title>
<link rel="stylesheet" href="reg.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="navbar">
		<h1 class="logo">Condominio</h1>


	</div>
	<div class="regbox">
		<img src="images/avatar.png" class="avatar">
		<h1>Registrazione</h1>
		<form action="Servlet?op=reg" method="post" name="invio">
			<p>
				<i class="fa fa-user-circle" aria-hidden="true"></i> Nome<input
					type="text" name="nome" placeholder="Nome">

			</p>
			<p>
				<i class="fa fa-user-circle" aria-hidden="true"></i> Cognome<input
					type="text" name="cognome" placeholder="Cognome">

			</p>
			<p>
				<i class="fa fa-phone-square" aria-hidden="true"></i> Telefono <input
					type="text" name="telefono" id="tel" placeholder="telefono">

			</p>
			<p>
				<i class="fa fa-address-card-o" aria-hidden="true"></i> Palazzo<input
					type="text" name="id_palazzina" id="pl"
					placeholder="Numero palazzina">

			</p>
			<p>
				<i class="fa fa-envelope" aria-hidden="true"></i> Email <input
					type="email" name="email" placeholder="Email" required
					autocomplete="off">
			</p>
			<input type="hidden" name="loginregistrazione" value="registrazione" />
			<p>
				<i class="fa fa-key" aria-hidden="true"></i><i class="fa fa-eye"
					id="eye"></i> Password <input type="password" id="pwd"
					name="password" placeholder="Password">

			</p>
			<p>
				<i class="fa fa-key" aria-hidden="true"></i>Conferma Password <input
					type="password" name="conferma" placeholder="Conferma password">


			</p>
			<p>
			Carta d'identit&agrave;<input type="file" name="file2" />
			</p>
			 <input class="btn"
				type="submit" value="Registrati" onclick="valida()"> <br />
			<input class="btn" type="reset" value="Reset"> <br />
			<p>
				<a href="login.jsp"> Hai gi&agrave un Account? Accedi </a>
			<p>
				<a href="regDelegato.jsp"> Sei un delegato? Registrati come
					delegato </a>
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
	<script type="text/javascript">
		function valida() {

			var nome = document.invio.nome.value;
			var cognome = document.invio.cognome.value;
			var telefono = document.invio.telefono.value;
			var id_palazzina = document.invio.id_palazzina.value;
			var email = document.invio.email.value;
			var password = document.invio.password.value;
			var conferma = document.invio.conferma.value;
			var file2 = document.invio.file2.value;

			var nome_valid = /^[a-zA-Z]*$/;
			if (!nome_valid.test(nome) || (nome.length <= 2) || (nome == "")
					|| (nome == "undefined")) {
				alert("Inserisci un nome valido");
				document.invio.nome.focus();
				return false;
			}
			var cognome_valid = /^[a-zA-Z]*$/;
			if (!cognome_valid.test(cognome) || (cognome == "")
					|| (cognome == "undefined")) {
				alert("Inserisci un cognome valido");
				document.invio.cognome.focus();
				return false;
			}
			if ((isNaN(telefono)) || (telefono == "")
					|| (telefono == "undefined")) {
				alert("Devi inserire il telefono, attenzione deve essere numerico!");
				document.invio.telefono.value = "";
				document.invio.telefono.focus();
				return false;
			}
			if (id_palazzina == "") {
				alert("Inserisci il tuo palazzo");
				document.invio.id_palazzina.focus();
				return false;
			}

			var email_valid = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-]{2,})+.)+([a-zA-Z0-9]{2,})+$/;
			if (!email_valid.test(email) || (email == "")
					|| (email == "undefined")) {
				alert("Inserisci un indirizzo email corretto");
				document.invio.email.focus();
				return false;
			}
			if (password.length < 8 || (password == "")
					|| (password == "undefined")) {
				alert("Scegli una password, minimo 8 caratteri");
				document.invio.password.focus();
				return false;
			}

			if ((conferma == "") || (conferma == "undefined")) {
				alert("Conferma la password");
				document.invio.conferma.focus();
				return false;
			}
			if (password != conferma) {
				alert("Le password non corrispondono");
				document.invio.conferma.value = "";
				document.invio.conferma.focus();
				return false;
			}
			if (file2 == "") {
				alert("Carica immagine")
			} else {
				document.invio.action = "Servlet?op=reg";
				document.invio.submit();
			}

		}
		
	</script>
</body>
</html>
