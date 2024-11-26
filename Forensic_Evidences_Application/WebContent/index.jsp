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

                        <div class="col-lg-12 col-12 d-flex align-items-center">
                            <a class="site-header-text d-flex justify-content-center align-items-center me-auto" href="index.jsp">
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


        


            <!-- Modal -->
            <div class="modal fade" id="subscribeModal" tabindex="-1" aria-labelledby="subscribeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <form action="#" method="get" class="custom-form mt-lg-4 mt-2" role="form">
                                <h2 class="modal-title" id="subscribeModalLabel">Stay up to date</h2>

                                <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="your@email.com" required="">

                                <button type="submit" class="form-control">Notify</button>
                            </form>
                        </div>

                        <div class="modal-footer justify-content-center">
                            <p>By signing up, you agree to our Privacy Notice</p>
                        </div>
                    </div>
                </div>
            </div>


            <section class="hero-section d-flex justify-content-center align-items-center" id="section_1">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mx-auto">
                            <small>our website is under construction. 
                            <a rel="nofollow" target="_blank" href="https://www.pexels.com/video/digital-projection-of-the-earth-mass-in-blue-lights-3129957/">Earth video by Pexels</a></small>
                            <!-- please set the date time in the init.js file -->
                            
                          <h1 class="text-white mt-2 mb-4 pb-2">
                                Safeguarding <br>Forensic <br> Evidence
                            </h1>

                             <!-- <ul class="countdown d-flex flex-wrap align-items-center">
                               <li class="countdown-item d-flex flex-column justify-content-center align-items-center">
                                    <h2 class="countdown-title days">14</h2>
                                    <span class="countdown-text">Days</span>
                               </li>

                               <li class="countdown-item d-flex flex-column justify-content-center align-items-center">
                                    <h2 class="countdown-title hours">10</h2>
                                    <span class="countdown-text">Hours</span>
                               </li>

                               <li class="countdown-item d-flex flex-column justify-content-center align-items-center">
                                    <h2 class="countdown-title minutes">15</h2>
                                    <span class="countdown-text">Minutes</span>
                               </li>

                               <li class="countdown-item d-flex flex-column justify-content-center align-items-center">
                                    <h2 class="countdown-title seconds">34</h2>
                                    <span class="countdown-text">Seconds</span>
                               </li>     
                            </ul> -->
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