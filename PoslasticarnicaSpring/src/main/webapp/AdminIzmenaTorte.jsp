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
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}


.kontejner {	
	background-color:#FA5A39;
	vertical-align: top;
	display: inline-block;
	text-align: center;
	width: 45%;
	max-width: 400px;
	min-width: 200px;
	padding: 20px 40px;
	margin: 10px 40px;
}

#sadrzaj {
	text-align: center;
	margin-top: 0px;
	padding-top: 0px;
}

</style>
<title>Izmena torte</title>
</head>
<body>
<div class="w3-bar w3-white w3-large">
  <a href="/Poslasticara/AdminPocetna.jsp" class="w3-bar-item w3-button w3-red w3-mobile"><i class="fa fa-bed w3-margin-right"></i>Logo</a>
  <a href="/Poslasticara/ONama.jsp" class="w3-bar-item w3-button w3-mobile">O nama</a>
  <a href="/Poslasticara/Kontakt.jsp" class="w3-bar-item w3-button w3-mobile">Kontakt</a>
  <a href="/Poslasticara/Pocetna.jsp" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile">Odjavi se</a>
</div><br>
	<c:if test="${!empty poruka }">
			<div id="sadrzaj">
		<div id="poruke">
			<div>${poruka }</div>
		</div>
	</div>
	</c:if>
	<div id="sadrzaj">
			<div class="kontejner">
				<h2>Izmena detalja torte:</h2>
				<form action="/Poslasticara/Torte/izmenaTorte" method="post">
					Cena: <input type="text" name="cena"><br>
					Opis: <textarea rows="6" cols="37" name="opis"></textarea>
					<input type="submit" value="Izmeni tortu">
				</form>
			</div>
	</div>
</body>
</html>