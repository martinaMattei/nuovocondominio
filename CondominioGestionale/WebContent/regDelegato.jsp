<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrazione delegato </title>
</head>
<body>

<div class="container">

		<h1>Registrazione</h1>
		<form action="Servlet?op=regdel" method="post" name="invio">
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
					
			<h5>Delegato di : </h5>		
					<div class="textbox">
				<i class="fa fa-user-circle" aria-hidden="true"></i> <input
					type="text" name="nominativo" placeholder="nominativo" required
					autocomplete="off">

			</div>
					<div class="textbox">
				<i class="fa fa-user-circle" aria-hidden="true"></i> <input
					type="text" name="id_palazzina" placeholder="numero palazzina" required
					autocomplete="off">

			</div>


			<input class="btn" type="submit" value="Registrati"
				onclick="valida()"> <br /> <br /> <input class="btn"
				type="reset" value="Reset"> <br />
			<h3>
				Hai già un Account? <a href="login.jsp"> Accedi </a>
			</h3>
			
		</form>
	</div>

</body>
</html>