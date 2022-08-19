<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>East Windsor Volunteer Fire Company #2 </title>
    	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/MainPage.css" />
		  <style> html, body{
    background-image: url("${pageContext.request.contextPath}/resources/img/background.jpg");
    width: 100%;
    height: 100%; 
    font-family: 'Didact Gothic';
    font-weight: bold;
} </style>

</head>

<body class="h-100 text-center text-bg-dark" >
    <header>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/mainPage">Station 46</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/mainPage">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/aboutUs">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/donatePage">Donate</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                More
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/firefighter/list">Our Members</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/certification/list"">Certifications</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/gallery">Gallery</a></li>
                                <li><a class="dropdown-item" href="http://localhost:8065/api/firefighters">B2B</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/applyPage">Join Our Team!</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8035">Login(Members Only)</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div id="mainContainer">
        <div id="generalInformation">

            <div class="welcome">
                <div class="title"><h1>Welcome To East Windsor Volunteer Fire Company #2</h1></div>
                <!-- <div class="message">East Windsor Vol. Fire Co. No. 2, Station 46, was established in 1970 and serves the Eastern portion of East Windsor
                Township. The fire company is 100% volunteer. Our fire company provides fire suppression and rescue services to the
                community.</div> -->
                <a href="https://www.facebook.com/EWVFC2"  target=”_blank” title="Image from freepnglogos.com" class="fblogo"><img
                        src="https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png"
                        width="30" alt="Facebook Symbol, Facebook Logos Within A White Square"/>Follow us on
                    Facebook!</a>
                </p>
            </div>
        </div>
        <div id="footerInfo">
            <div class="leftFooter">
                <img class="logo" src="${pageContext.request.contextPath}/resources/img/logo.webp" alt="Station Logo" width="150px">
            </div>
            <div class="middleFooter">
                <h3>East Windsor Volunteer Fire Company #2</h3>
                <p>69 Twin Rivers Drive</p>
                <p>East Windsor, NJ, 08520</p>
                <p>(609) 443-5130</p>

            </div>
            <div class="rightFooter">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12178.71828408093!2d-74.4937286!3d40.260652!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa22fa6f67ce229ac!2sEast%20Windsor%20Volunteer%20Fire%20Co.%202!5e0!3m2!1sen!2sus!4v1658865951531!5m2!1sen!2sus"
                width="300" height="200" style="border:0;"></iframe>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>

</html>