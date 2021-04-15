<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="ISO-8859-1">
<title>CONDOMINIO</title>
<link rel="stylesheet" type="text/css" href="log.css">
    </head>
    <body>
        <h1>CONDOMINIO</h1>
        <center>
            <h2>LOGIN</h2>
  <form action="Servlet?op=login" method="post">
					<p>Email :</p>
					<input type="text" name="email" placeholder="Email"
						required="required">
					<p>Password :</p>
					<input type="password" name="password" placeholder="**"
						required="required">

					<button class="btn">ACCEDI</button>
				</form>
        </center>
    </body>
</html>