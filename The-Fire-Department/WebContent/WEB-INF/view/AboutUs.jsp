<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>East Windsor Volunteer Fire Company #2 </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AboutUs.css">
    
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
                </div>
            </div>
        </nav>
  </header>
    <div id="mainContainer">
        <div id="generalInformation">
          <div class="head">
          <div class="title"> About Us!</div>
          
            <div class="info">
              <p> We are Station 46 and we are considered an Engine Company!</p>

              <span class="begin">But what does that mean??
              </span>
            </div>
          
              <!-- START THE FEATURETTES -->
            </div>  
            <div class="container marketing">
            <div class="row featurette">
              <div class="col-md-7">
                <h2 class="featurette-heading">Well First. <span class="text-muted">We come out with a plan.</span>
                </h2>
                <p class="lead">Engine company members devise a plan to successfully attack the fire – the size-up. The size-up is defined in most fire service texts as the on-going evaluation of problems confronted within a fire situation.
                Size-up starts with the receipt of an alarm and continues until the fire is under control. This process is carried out
                many times and by many different individuals at each fire or emergency event
                </p>
              </div>
              <div class="col-md-5">
                <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"
                  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500"
                  preserveAspectRatio="xMidYMid slice" focusable="false"> -->
                  <img src="https://www.halcyonproducts.com/content/images/thumbs/0000124_mobile-command-post-model-number-mcp-01-includes-commandpak.jpeg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"
                  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500"
                  preserveAspectRatio="xMidYMid slice" focusable="false alt=">
                <!-- </svg> -->
          
              </div>
            </div>
          
            <hr class="featurette-divider">
          
            <div class="row featurette">
              <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading">Once we know the Plan. <span class="text-muted">We attack or defend.</span></h2>
                <p class="lead">They then stretch a line, advance it through the structure, and put water on the fire. Fire Trucks also have a massive pump
                  that throws water from what we call "The boom" This can put over 1000 gallons of water on the stucture every second! </p>
              </div>
              <div class="col-md-5 order-md-1">
              <img
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn67Du_SCVPCZhG2CPL1BVvLmPvbhd88Zi7w&usqp=CAU"
                class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"
                xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice"
                focusable="false alt=">
          
              </div>
            </div>
          
            <hr class="featurette-divider">
          
            <div class="row featurette">
              <div class="col-md-7">
                <h2 class="featurette-heading">Our main goal. <span class="text-muted">Fire Extinguishment</span></h2>
                <p class="lead">Our company have 3 Engines and a TeleSquirt. All that hold over 1000 gallons of water each. Most trucks hold around 500 gallons. We provide the water to the crew to make sure we have enough to extinguish the Fire. If we need more. we refill and go back, or we find the nearest hydrant to supply us at the scene.</p>
              </div> 
              <div class="col-md-5">
                <img
                  src="${pageContext.request.contextPath}/resources/img/firetrucks.jpg"
                  class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"
                  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice"
                  focusable="false alt=">
          
              </div>
            </div>
          
            <hr class="featurette-divider">
          
            <!-- /END THE FEATURETTES -->
          
          </div>
        </div>
      </div>
            
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>    
</body>
</html>