<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!-- taglibs are not ignored -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html lang="en">
<head>
<style>

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

</style>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Pipeline Bootstrap 4.0 Theme</title>
<!--
Pipeline
http://www.templatemo.com/tm-496-pipeline
-->
<!-- load stylesheets -->
<link href='<spring:url value="/resources/css/styleFront.css"/>'
	rel="stylesheet" />
<link
	href='<spring:url value="//fonts.googleapis.com/css?family=Open+Sans:300,400"/>'
	rel="stylesheet" />
<!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link href='<spring:url value="/resources/css/styleFront.css"/>'
	rel="stylesheet" />
<!-- Font Awesome, http://fontawesome.io/ -->
<link
	href='<spring:url value="/resources/font-awesome-4.6.3/css/font-awesome.min.css"/>'
	rel="stylesheet" />
<link href='<spring:url value="/resources/css/bootstrap.min.css"/>'
	rel="stylesheet" />
<!-- Bootstrap style, http://v4-alpha.getbootstrap.com/ -->
<link href='<spring:url value="/resources/css/magnific-popup.css"/>'
	rel="stylesheet" />
<!-- Magnific pop up style, http://dimsemenov.com/plugins/magnific-popup/ -->
<link href='<spring:url value="/resources/css/templatemo-style.css"/>'
	rel="stylesheet" />
<!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

<body>
	<div class="container-fluid">

		<section id="welcome" class="tm-content-box tm-banner margin-b-10">
		<div class="tm-banner-inner">
			<h1 class="tm-banner-title">SoundSearch</h1>
		</div>
		</section>

		<div class="tm-body">
			<div class="tm-sidebar">
				<nav class="tm-main-nav">
				<ul class="tm-main-nav-ul">
					<li class="tm-nav-item"><a href="/SoundSearch/home"
						class="tm-nav-item-link tm-button"> <i
						class="fa fa-smile-o tm-nav-fa"></i>Strona Startowa
					</a></li>
					<li class="tm-nav-item"><a href="/SoundSearch/editUser"
						class="tm-nav-item-link tm-button"> <i
							class="fa fa-smile-o tm-nav-fa"></i>Twój profil
					</a></li>
					<li class="tm-nav-item"><a href="/SoundSearch/bandMenu"
						class="tm-nav-item-link tm-button"> <i
							class="fa fa-image tm-nav-fa"></i>Zespoły
					</a></li>
					<li class="tm-nav-item"><a href="/SoundSearch/adMenu"
						class="tm-nav-item-link tm-button"> <i
							class="fa fa-tasks tm-nav-fa"></i>Ogłoszenia
					</a></li>
                    <li class="tm-nav-item"><a href="/SoundSearch/logout" 
                    	class="tm-nav-item-link tm-button">
                    <i class="fa fa-sitemap tm-nav-fa"></i>Wyloguj</a>
                    </li>					
					
				</ul>
				</nav>
			</div>

			<div class="tm-main-content"  >

					
	                       
				
					
					<form:form method="post" modelAttribute="bandUser">

						<p>	
						<label for="bandName">Nazwa zespołu:</label>
						<form:input type="text" class="form-control" path="bandName" id="bandName" items="${bandUser.bandName}" placeholder="Nazwa zespołu"/>
							</p>	
							<p>
						<label for="creationDate">Data powstania:</label>
						<form:input type="date" class="form-control" path="creationDate" id="creationDate" items="${bandUser.creationDate}"
							 placeholder="Data Ogłoszenia"/>
							</p>	
							<p>
						<label for="city">Miejscowość:</label>
						<form:input type="text" class="form-control" path="city" id="city" items="${bandUser.city}"
							 placeholder="Miejscowość"/>
							</p>	
							<p>
							<p>
							<label for="genre">Grane gatunki muzyczne:</label>
							<p>
							<sub>Aktualne ustawienie
								<c:forEach items="${bandUser.musicGenres}" var="genre">
									<font color="red"><i>${genre.genreName},</i> </font>
									
								</c:forEach></sub>
							</p>
							<form:select multiple="true" path="musicGenres" itemValue="id" items="${musicGenres}" itemLabel="genreName"/>
							</p>	
							<p>
							
						<form:input type="hidden" class="form-control" path="id" id="id" items="${band.Userid}"/>
							</p>	
							<p>	
						
						<button type="submit" class="tm-button tm-button-normal">Zapisz!</button>
							</p>
					</form:form>
         					  

          </div>
        </div>
        
         
      

    </body>
    </html>