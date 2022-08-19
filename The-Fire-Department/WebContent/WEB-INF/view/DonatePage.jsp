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
    <title>Donate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/DonatePage.css">
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
        <div class="cont">
            <div class="upper">
            </div>
             <div class="boxes">
                
                  <div class="left">
                    <h1>Donate Today!</h1>
                    <p class="">
                    Thank you for something. blah blah blah
                    </p>
                  </div>

                  <div class="donateTypes">
                    <div class="venmo">
                      <h2>Scan this code for our Venmo</h2>
                      <img src="${pageContext.request.contextPath}/resources/img/venmo.jpg" width="250" height="200" alt="">
                    </div>
                    <br>
                    <div class="paypal">
                      <h3>Click on the link below to Donate VIA paypal</h3>
                      <form action="https://www.paypal.com/donate" method="post" target="_top">
                        <input type="hidden" name="business" value="V8FB84K2VEWLQ" />
                        <input type="hidden" name="no_recurring" value="0" />
                        <input type="hidden" name="item_name" value="Donating to East Windsor Volunteer Fire Department Co #2!" />
                        <input type="hidden" name="currency_code" value="USD" />
                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" width="250" border="0"
                          name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
                        <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" />
                      </form>
                    </div>
                  </div>

                  <div class="info">You can donate to us using the form on the right or you can email us at (Ewvfc2@gmail.com) or 
                    call us at (609)443-5130.</div>


                </div>
            </div>

            <div id="footerInfo">
            <div class="leftFooter">
              <img class="logo" src="${pageContext.request.contextPath}/resources/img/venmo.jpg" alt="Station Logo" width="150px">
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

    </div>

    <script src="../script/donatePage.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>     
</body>
</html>