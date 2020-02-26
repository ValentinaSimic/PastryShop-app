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
<style>
#sadrzaj {
	text-align: center;
	margin-top: 0px;
	padding-top: 0px;
}

#poruke, #greske {
	margin-left:0px;
	margin-right:0px;
	
	padding: 0px;
}

#poruke div, #greske div {
	color: white;
}

#poruke div {
	background-color: rgb(15,5,3);
}

#greske div {
	background-color: rgb(139,24,24);
}

table {
	margin-left:20px;
    border-collapse: collapse;
    width: 40%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {background-color: white;}

th {
    background-color: #ff1a1a;
    color: white;
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
</head>
<body>
<div class="w3-bar w3-white w3-large">
		<a href="/Poslasticara/AdminPocetna.jsp" class="w3-bar-item w3-button w3-red w3-mobile"><i
			class="fa fa-bed w3-margin-right"></i>Logo</a> <a
			href="/Poslasticara/ONama.jsp"
			class="w3-bar-item w3-button  w3-light-pink w3-mobile">O nama</a> <a
			href="/Poslasticara/Kontakt.jsp"
			class="w3-bar-item w3-button w3-light-pink w3-mobile">Kontakt</a> <a
			href="Registracija.jsp"
			class="w3-bar-item w3-button w3-right w3-light-pink w3-mobile">Registracija</a>
			  <a href="/Poslasticara/Pocetna.jsp" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile">Odjavi se</a>
			
	</div>
<h3>&emsp;<b>Porudzbine:</b></h3>
<c:if test="${!empty poruka}">
			<div id="sadrzaj">
		<div id="poruke">
			<div>${poruka }</div>
		</div>
	</div>
	</c:if>
	<c:if test="${empty listaR }">
		<c:if test="${!empty lista }">
		<table border="1" style="background: #ffe6e6">
			<tr>
				<th>Ime:</th>
				<th>Prezime:</th>
				<th>Datum za isporuku:</th>
				<th>Izbrisi porudzbinu:</th>
			</tr>
			<c:forEach var="r" items="${lista }">
				<tr>
					<td>${r.korisnik.ime}</td>
					<td>${r.korisnik.prezime }</td>
					<td>${r.datumIsporuke }</td>
					<td><a href="/Poslasticara/Torte/izbrisiPorudzbinu?idP=${r.idPorudzbina}">Izbrisi</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</c:if>
		<c:if test="${empty lista }">
		Trenutno nema porudzbina!
	</c:if>
	</c:if>	
	<c:if test="${!empty listaR }">
				<table border="1" style="background: #ffe6e6">
			<tr>
				<th>Ime:</th>
				<th>Prezime:</th>
				<th>Datum za isporuku:</th>
				<th>Izbrisi porudzbinu:</th>
			</tr>
			<c:forEach var="r" items="${listaR }">
				<tr>
					<td>${r.korisnik.ime}</td>
					<td>${r.korisnik.prezime }</td>
					<td>${r.datumIsporuke }</td>
					<td><a href="/Poslasticara/Torte/izbrisiPorudzbinu?idP=${r.idPorudzbina}">Izbrisi</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	
	
	
</body>
</html>