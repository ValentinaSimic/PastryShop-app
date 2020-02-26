<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/Poslasticara/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="w3-bar w3-white w3-large">
		<a href="/Poslasticara/Pocetna.jsp" class="w3-bar-item w3-button w3-red w3-mobile"><i
			class="fa fa-bed w3-margin-right"></i>Logo</a> <a
			href="/Poslasticara/ONama.jsp"
			class="w3-bar-item w3-button  w3-light-pink w3-mobile">O nama</a> <a
			href="/Poslasticara/Kontakt.jsp"
			class="w3-bar-item w3-button w3-light-pink w3-mobile">Kontakt</a> <a
			href="Registracija.jsp"
			class="w3-bar-item w3-button w3-right w3-light-pink w3-mobile">Registracija</a>
	</div>

	<c:if test="${!empty poruka }">
		<div id="sadrzaj">
		<div id="poruke">
			<div>${poruka }</div>
		</div>
	</div>
	</c:if>
	<c:if test="${!empty poruka1 }">
				<div id="sadrzaj">
		<div id="greske">
			<div>${poruka1 }</div>
		</div>
	</div>
	</c:if>
<div id="sadrzaj">
			<div class="kontejner">
			
				<h2>Registruj se</h2>
				<form action="/Poslasticara/LogRegist/registracija" method="post">
					Ime: <br><input type="text" name="ime"><br>
					Prezime: <br><input type="text" name="prezime"><br>
					Korisnicko ime: <br><input type="text" name="username"><br>
					Lozinka: <br><input type="password" name="password"><br>
					Adresa: <br><input type="text" name="adresa"><br>
					<input type="submit" value="Registruj se" name="registrujSe">
				</form>
			</div>
			
			
</div>			

</body>
</html>