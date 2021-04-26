<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%	String avviso = (String) request.getAttribute("avviso");
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="ISO-8859-1">
<title>loginAmministratore</title>
<link rel="stylesheet" type="text/css" href="loginAdmin.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
    </head>
    <body>
       <div class="navbar">
		<h1 class="logo">Condominio</h1>


	</div>
        
		<div class="loginbox">
		<img src="images/avatar.png" class="avatar">
		<h1>Login Admin</h1>
		<%
				if (avviso != null)
					out.println(avviso);
				%>
		<form action="Servlet?op=loginAdmin" method="post">
			<p>
				<i class="fa fa-envelope" aria-hidden="true"></i> Email
			
			<input type="email" name="email" placeholder="Inserisci email">
			</p>
			<p>
				<i class="fa fa-key" aria-hidden="true"></i> Password
			
			<input type="password" name="password" placeholder="Inserisci password">
			</p>
			
			<input type="submit" name="" value="Accedi">
				</form>
				
			</div>
			
    </body>
</html>