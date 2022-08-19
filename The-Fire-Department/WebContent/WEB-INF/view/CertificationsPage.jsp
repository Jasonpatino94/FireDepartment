<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Certifications.css">
</head>
<body>
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
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/certification/list">Certifications</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/gallery">Gallery</a></li>
                                <li><a class="dropdown-item" href="http://localhost:8065/api/firefighters">B2B</a></li> 
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/applyPage">Join Our Team!</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div id="mainContainer">
        <div class="container">
            <h1>Certifications</h1>
           <div class="row">
           
				<!-- loop over and print our Certificates-->
				<c:forEach var="tempCert" items="${certifications}">
				
				<c:url var="updateLink" value="/certification/showUpdateForm">
					<c:param name="cId" value="${tempCert.cId }"/>
					</c:url>
					
					<c:url var="deleteLink" value="/certification/deleteCertification">
						<c:param name="cId" value="${tempCert.cId}"/>
					</c:url>
					
					<div class="col-md-6 col-lg-3">
                    <div class="card border-light mb-3" style="max-width: 18rem;">
                        <div class="card-header">${tempCert.cName}</div>
                        <div class="card-body">
                            <p class="card-text">${tempCert.cDescription}</p>
                        </div>
                    </div>
                </div>
				
				</c:forEach>
           </div>
        </div>
    </div>

        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
            crossorigin="anonymous"></script>

</body>
</html>