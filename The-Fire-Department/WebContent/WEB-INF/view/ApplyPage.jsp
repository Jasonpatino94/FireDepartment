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
    <title>Document</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ApplyPage.css">
        

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
        <div class="container">
            <div class="left">
                <p>Fill out the form on the right with all your information or download one of the PDF files located on the bottom and bring it to the firehouse located at
                    69 Twin Rivers Drive, East Windsor. Once we receive your information, we will be in contact with you as soon
                    as possible. We are 100% Volunteers and take in people as young as 16 to any age. <span>Be a part of the team today!</span>
                </p>
                <div class="pdfs">
                    <div class="probie">
                        <h4>18 and above</h4>
                        <a href="#"><img src="https://play-lh.googleusercontent.com/9XKD5S7rwQ6FiPXSyp9SzLXfIue88ntf9sJ9K250IuHTL7pmn2-ZB0sngAX4A2Bw4w" width="100" alt=""></a>
                    </div>
                    <div class="junior">
                        <h4>16 and 17</h4>
                        <a href="#"><img src="https://play-lh.googleusercontent.com/9XKD5S7rwQ6FiPXSyp9SzLXfIue88ntf9sJ9K250IuHTL7pmn2-ZB0sngAX4A2Bw4w" width="100" alt=""></a>
                    </div>
                </div>
            </div>


            <div class="right">
                <div class="page-wrapper bg-dark p-t-100 p-b-50">
                    <div class="wrapper wrapper--w900">
                        <div class="card card-6">
                            <div class="card-heading">
                                <h2 class="title">Become one with the team!</h2>
                            </div>
                            <div class="card-body">
                                <form method="POST">
                                    <div class="form-row">
                                        <div class="name">Full name</div>
                                        <div class="value">
                                            <input class="input--style-6" type="text" name="full_name">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="name">Email address</div>
                                        <div class="value">
                                            <div class="input-group">
                                                <input class="input--style-6" type="email" name="email" placeholder="example@email.com">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="name">Message</div>
                                        <div class="value">
                                            <div class="input-group">
                                                <grammarly-extension data-grammarly-shadow-root="true"
                                                    style="position: absolute; top: 0px; left: 0px; pointer-events: none;"
                                                    class="cGcvT"></grammarly-extension>
                                                <grammarly-extension data-grammarly-shadow-root="true"
                                                    style="mix-blend-mode: darken; position: absolute; top: 0px; left: 0px; pointer-events: none;"
                                                    class="cGcvT"></grammarly-extension>
                                                <textarea class="textarea--style-6" name="message"
                                                    placeholder="Message sent to the employer" spellcheck="false"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="name">Upload CV</div>
                                        <div class="value">
                                            <div class="input-group js-input-file">
                                                <input class="input-file" type="file" name="file_cv" id="file">
                                                <label class="label--file" for="file">Choose file</label>
                                                <span class="input-file__info">No file chosen</span>
                                            </div>
                                            <div class="label--desc">Upload your CV/Resume or any other relevant file. Max file size 50
                                                MB</div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer">
                                <button class="btn btn--radius-2 btn--blue-2" type="submit">Send Application</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
        <script src="../script/script.js"></script>
</body>
</html>