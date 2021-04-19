<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">

li {list-style: none;}
</style> 
<title>Errore</title>
</head>
<body id="bodyerrori">
<div class="immagineloginregistrazione"
	style="background-image: url('https://images8.alphacoders.com/799/799076.jpg');
    height: 100vh; width:1745pt;"> 
    <h1 class="erroreloginregistrazioneh1">Errore di accesso a Zona Admin</h1>
    <p class="erroreloginregistrazionetitolotesto">Hai provato ad accedere a una pagina riservata agli admin. Sei stato sloggato</p>
<%session.invalidate();%>
<script type="text/javascript">
alert("Hai provato ad accedere a una pagina riservata agli admin. Sei stato sloggato");
</script>
<li><a href="login.jsp" class="erroreloginregistrazionetitolotesto">Ritenta il Login</a></li>
</div>
</body>
</html>