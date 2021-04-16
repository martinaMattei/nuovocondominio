<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="ISO-8859-1">
<title>loginAmministratore</title>
<link rel="stylesheet" type="text/css" href="log.css">
    </head>
    <body>
        <h1>CONDOMINIO</h1>
            <h2>LOGIN AMMINISTRATORE</h2>
			<div class="box">
				<form action="Servlet?op=loginAdmin" method="post">
					<p>Email :</p>
					<input type="text" name="email" placeholder="email"
						required="required">
					<p>Password :</p>
					<input type="password" name="password" placeholder="****"
						required="required">

					<button class="btn">ACCEDI</button>
					<p>
					</p>
				</form>
			</div>
    </body>
</html>