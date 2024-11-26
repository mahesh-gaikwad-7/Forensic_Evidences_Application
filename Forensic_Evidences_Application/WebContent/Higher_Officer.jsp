<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Block Chain</title>

        <!-- CSS FILES -->                
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,700;1,200&family=Unbounded:wght@400;700&display=swap" rel="stylesheet">
        
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/tooplate-kool-form-pack.css" rel="stylesheet">
<!--

Tooplate 2136 Kool Form Pack

https://www.tooplate.com/view/2136-kool-form-pack

Bootstrap 5 Form Pack Template

-->
    </head>
    
    <body>

        <main>

            <header class="site-header">
                <div class="container">
                    <div class="row justify-content-between">

                        <div class="col-lg-12 col-12 d-flex">
                            <a class="site-header-text d-flex justify-content-center align-items-center me-auto" href="index.html">
                                <i class="bi-box"></i>

                                <span>
                                    <jsp:include page="title.jsp"></jsp:include>
                                </span>
                            </a>

                            

                            <div>
                                <jsp:include page="Lmenu.jsp"></jsp:include>
                            </div>

                           <!--  <a class="bi-list offcanvas-icon" data-bs-toggle="offcanvas" href="#offcanvasMenu" role="button" aria-controls="offcanvasMenu"></a>
 -->
                        </div>

                    </div>
                </div>
            </header>


            <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasMenu" aria-labelledby="offcanvasMenuLabel">                
                <div class="offcanvas-header">                    
                    <button type="button" class="btn-close ms-auto" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                
                    </div>


            <section class="hero-section d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-5 col-12 mx-auto">
                            <form class="custom-form login-form" role="form" action="HLogin" method="post">
                                <h3 class="hero-title text-center mb-4 pb-2">Higher Officer Login Form</h3>

                                <div class="form-floating mb-4 p-0">
                                    <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required="">

                                    <label for="email">Email address</label>
                                </div>

                                <div class="form-floating p-0">
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" required="">

                                    <label for="password">Password</label>
                                </div>

                                <div class="form-check mb-4">
                                   
                                </div>

                                <div class="row justify-content-center align-items-center">
                                    <div class="col-lg-5 col-12">
                                        <button type="submit" class="form-control">Login</button>
                                    </div>

                                    <div class="col-lg-5 col-12">
                                        <a href="Higher_Officer_Register.jsp" class="btn custom-btn custom-border-btn">Register</a>
                                    </div>
                                </div>

                            </form>
                            
                        </div>
                    </div>
                </div>

                <div class="video-wrap">
                    <video autoplay="" loop="" muted="" class="custom-video" poster="">
                        <source src="videos/video.mp4" type="video/mp4">

                        Your browser does not support the video tag.
                    </video>
                </div>
            </section>
        </main>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/init.js"></script>

    </body>
</html>
