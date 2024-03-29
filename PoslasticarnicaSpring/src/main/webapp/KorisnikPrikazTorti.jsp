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
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}

table {
	margin-left:40px;
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

</style>
</head>
<body class="w3-light-grey">
<div class="w3-bar w3-white w3-large">
		<a href="/Poslasticara/KorisnikPocetna.jsp" class="w3-bar-item w3-button w3-red w3-mobile"><i
			class="fa fa-bed w3-margin-right"></i>Logo</a> <a
			href="/Poslasticara/ONama.jsp"
			class="w3-bar-item w3-button  w3-light-pink w3-mobile">O nama</a> <a
			href="/Poslasticara/Kontakt.jsp"
			class="w3-bar-item w3-button w3-light-pink w3-mobile">Kontakt</a> 
			  <a href="/Poslasticara/Pocetna.jsp" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile">Odjavi se</a>
			
	</div>
	<h5>&emsp;&emsp;&emsp;<b>Pretrazi odredjenu tortu:</b></h5>
	<form action="/Poslasticara/Korisnik/vidiTortu" method="get">
	&emsp;&emsp;&emsp;<input type="text" name="naziv"/>
	<input type="submit" value="Pretrazi"/><br><br><br>
	</form>
	<h3>&emsp;&emsp;&emsp;<b>Torte:</b></h3>
	<div>
		<c:if test="${!empty poruka}">
			<div id="sadrzaj">
		<div id="poruke">
			<div>${poruka }</div>
		</div>
	</div>
	</c:if>
	<div>
		<c:if test="${!empty poruka1}">
			<div id="sadrzaj">
		<div id="poruke">
			<div>${poruka1 }</div>
		</div>
	</div>
	</c:if>
	<c:if test="${empty novaLista }">
	<c:if test="${!empty torte }">
	<table border="1" style="background: #ffe6e6">
		<tr>
			<th>ID</th>
			<th>Naziv</th>
			<th>Cena</th>
			<th>Opis</th>
			<th>Poruci </th>
		<tr>
			<c:forEach var="t" items="${torte }">
				<tr>
					<td>${t.idTorta }</td>
					<td>${t.naziv}</td>
					<td>${t.cena }</td>
					<td>${t.opis }</td>
					<td> <a href="/Poslasticara/Korisnik/poruci?idTorta=${t.idTorta }">Poruci </a></td>
				</tr>
			</c:forEach>
			
	</table>
	</c:if>
	<c:if test="${empty torte }">
		Trenutno nema torti!
	</c:if>
	</c:if>
	&emsp;&emsp;&emsp;<a href="/Poslasticara/KorisnikPoruci.jsp">Vasa korpa/zavrsi porudzbinu</a>
	<c:if test="${!empty novaLista }">
		<table border="1" style="background: #ffe6e6">
		<tr>
			<th>ID</th>
			<th>Naziv</th>
			<th>Cena</th>
			<th>Opis</th>
		<tr>
			<c:forEach var="t" items="${novaLista }">
				<tr>
					<td>${t.idTorta }</td>
					<td>${t.naziv }</td>
					<td>${t.cena }</td>
					<td>${t.opis }</td>
				</tr>
			</c:forEach>
			
	</table>
	</c:if>
	</div>

	
</body>
</html>