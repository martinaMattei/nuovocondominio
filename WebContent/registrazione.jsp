<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>

<title>Registrazione</title>
<link rel="stylesheet" type="text/css" href="reg.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>



</head>
<body>
	<div class="container">

		<h1>Registrazione</h1>
		<form action="Servlet?op=reg" method="post" name="invio">
			<div class="textbox">
				<i class="fa fa-user-circle" aria-hidden="true"></i> <input
					type="text" name="nome" placeholder="Nome" required
					autocomplete="off">

			</div>
			<div class="textbox">
				<i class="fa fa-user-circle" aria-hidden="true"></i> <input
					type="text" name="cognome" placeholder="Cognome" required
					autocomplete="off">

			</div>
			<div class="textbox">
				<i class="fa fa-user-circle" aria-hidden="true"></i> <input
					type="text" name="telefono" placeholder="telefono" required
					autocomplete="off">

			</div>
			<div class="textbox">
				<i class="fa fa-user-circle" aria-hidden="true"></i> <input
					type="text" name="id_palazzina" placeholder="numero palazzina" required
					autocomplete="off">

			</div>
			<div class="textbox">
				<i class="fa fa-envelope" aria-hidden="true"></i> <input
					type="email" name="email" placeholder="Email" required
					autocomplete="off">
			</div>
			<input type="hidden" name="loginregistrazione" value="registrazione" />
			<div class="textbox">
				<i class="fa fa-key" aria-hidden="true"></i><i class="fa fa-eye" id="eye"></i><input type="password"
					id="pwd" name="password" placeholder="Password" required
					autocomplete="off"> 

			</div>
			<div class="textbox">
				<i class="fa fa-key" aria-hidden="true"></i> <input type="password"
					name="conferma" placeholder="Conferma password" required
					autocomplete="off">


			</div>
			
			

			<input class="btn" type="submit" value="Registrati"
				onclick="valida()"> <br /> <br /> <input class="btn"
				type="reset" value="Reset"> <br />
			<h3>
				Hai già un Account? <a href="login.jsp"> Accedi </a>
			</h3>
			<h3>
				Sei un delegato? <a href="regDelegato.jsp"> Registrati come delegato </a>
			</h3>
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
