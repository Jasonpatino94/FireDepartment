<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Gallery.css">
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
            <div class="information">
                <div class="dark fire">
                    <h1 class="Blazing" contenteditable="true">Gallery</h1>
              </div>
                <p class="info">Here you can have a sneak peak of what we do at the firehouse or on the fire ground.
                    firefighting is all about training and developing new tricks and safe ways to fight fire but it can
                    also be a great time with fun times and awesome memories!
                </p>
            </div>
            <div class="container">
              <div class="row">
                <div class="col">
                <iframe width="400" height="315" src="https://www.youtube.com/embed/7MJcTqREwGM" title="YouTube video player"
                  frameborder="100" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen></iframe>
                </div>
                <div class="col">
                  <img
                    src="https://scontent.fewr1-6.fna.fbcdn.net/v/t39.30808-6/297448554_6371043806262345_8255276727016131700_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=_dKen_FwOqMAX94mwQt&_nc_ht=scontent.fewr1-6.fna&oh=00_AT_11eTuXc_LpS_IBDEjO7hpLkm0EyNt9z9qQlQXoEejpg&oe=62F7BE93"
                    width="400" height="315" alt="">
                </div>
                <div class="col">
                  <iframe width="400" height="315" src="https://www.youtube.com/embed/Bp1mm3o6Z5c" title="YouTube video player"
                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                </div>
                <div class="col">
                <iframe width="400" height="315" src="https://www.youtube.com/embed/6t70jyQla8g" title="YouTube video player"
                  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen></iframe>
                </div>
                <div class="col">
                  <iframe width="400" height="315" src="https://www.youtube.com/embed/C3MaZ75Uz4o" title="YouTube video player"
                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                </div>
                <div class="col">
                  <img src="https://scontent.fewr1-6.fna.fbcdn.net/v/t1.18169-9/21395_617163144983802_1769312730_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=19026a&_nc_ohc=BInRYcgm2z4AX_ZT4Qo&_nc_ht=scontent.fewr1-6.fna&oh=00_AT9w342QZkTxBabn8SOvoY7gi24qQh4srHPLKnnSh17YBA&oe=63071763" 
                  width="400" height="315"alt="">
                </div>
                
              </div>
            </div>
          </div>
    </div>



    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script> 
</body>
</html>