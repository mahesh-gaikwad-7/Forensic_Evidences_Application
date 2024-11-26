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
<!-- 
                            <a class="bi-list offcanvas-icon" data-bs-toggle="offcanvas" href="#offcanvasMenu" role="button" aria-controls="offcanvasMenu"></a>
 -->
                        </div>

                    </div>
                </div>
            </header>



            <section class="hero-section d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mx-auto">
                            <form class="custom-form" role="form" action="FRegister" method="post">
                                 <div  style="width: 100%">
                                 <br/>
                                 <br/>
                                   <h3 class="hero-title text-center mb-4 pb-2">Create an account</h3>
                                    <div class="form-group">
                                       <input type="text" id="name" name="uname" class="form-control" required="required" placeholder="Your Name"  />
                                    </div>
                               
                                    <div class="form-group">
                                       <input type="email" required="required" class="form-control" placeholder="Email Address" name="email" id="email" />
                                    </div>
                                 
                             
                                    <div class="form-group">
                                     <input type="text" required="required" class="form-control" placeholder="Your Address" name="address" id="textarea_message" />
                                      </div>
                             
                                    <div class="form-group">
                                       <input type="text" required="required"id="name" class="form-control" placeholder="Your Mobile Number" pattern="[7-9]{1}[0-9]{9}" maxlength="10" name="mobileno" id="mobileno" />
                                    </div>
                                
                                    <div class="form-group">
                                       <select class="form-control" required="required"  name="gender" id="gender">
                                          <option value="" >Select Gender</option>
                                          <option value="Male">Male</option>
                                          <option value="Female">Female</option>
                                         
                                       </select>
                                    </div>
                                
                             <!--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                       <input type="date" required="required" id="dob" class="form-control" placeholder="Your DOB" name="dob" />
                                    </div>
                                 </div>
                              </div> -->
                             
                              
                                    <div class="form-group">
                                       <input type="password" required="required" id="password" class="form-control"  name="password" placeholder="Your Password"  />
                                    </div>
                                  <div class="row justify-content-center align-items-center">
                                        <div class="col-lg-5 col-md-5 col-5 ms-auto">
                                            <button type="submit" class="form-control">Submit</button>
                                        </div>

                                        <div class="col-lg-6 col-md-6 col-7">
                                            <p class="mb-0">Already have an account? <a href="Forensic_Login.jsp" class="ms-2">Login</a></p>
                                        </div>
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
