<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
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
                            <a class="site-header-text d-flex justify-content-center align-items-center me-auto" href="index.jsp">
                                <i class="bi-box"></i>

                                <span>
                                    <jsp:include page="title.jsp"></jsp:include>
                                </span>
                            </a>

                           
                            <div>
                                 <a href="F_Add_Patient_infoPage.jsp" class="custom-btn custom-border-btn btn">Add Info
                                    
                                </a>
                                 
                                 <a href="FLogin" class="custom-btn custom-border-btn btn">LogOut
                                    
                                </a>
                            </div>
<!-- 
                            <a class="bi-list offcanvas-icon" data-bs-toggle="offcanvas" href="#offcanvasMenu" role="button" aria-controls="offcanvasMenu"></a>
 -->
                        </div>

                    </div>
                </div>
            </header>

<%
								
								SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd HH:mm a");
						String currentdate = f.format(new Date());
						 
						%>

            <section class="hero-section d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mx-auto">
                            <form class="custom-form" role="form" action="add_victim_info" method="post">
                                 <div  style="width: 100%">
                                 <br/>
                                 <br/>
                                   <h3 class="hero-title text-center mb-4 pb-2">Create an account</h3>
                                 <table style="width: 100%">
                                 <tr>
                                 <td>
                                 <div class="form-group">
                                       <input type="text"  id="uname"
												name="uname" class="form-control" required="required" placeholder="User Name"  />
                                    </div>
                                    </td>
                                    <td>
                                    <div class="form-group">
                                       <input type="text" id="name" name="uage" class="form-control" required="required" placeholder="Enter User Age"  />
                                    </div>
                                    </td>
                                 </tr>
                                 <tr>
                                 <td>
                                 <div class="form-group">
                                       <input type="text" id="name" name="udate" class="form-control" value="<%=currentdate %>" readonly="readonly" required="required" placeholder="Your Name"  />
                                    </div>
                                    </td>
                                    <td>
                                    <div class="form-group">
                                      <select class="form-control" required="required" name="txtdocument" id="gender">
                                          <option value="" >Select Document</option>
                                          <option value="Aadhar_card">Aadhar card</option>
                                          <option value="Pan_Card">Pan Card</option>
                                          <option value="Voting_card">Voting card</option>
                                          <option value="Driving_License_Card">Driving License Card</option>
                                         
                                       </select>
                                        </div>
                                    </td>
                                 </tr>
                                 <tr>
                                 <td>
                                 <div class="form-group">
                                       <select class="form-control" required="required" name="gender" id="gender">
                                          <option value="" >Select Gender</option>
                                          <option value="Male">Male</option>
                                          <option value="Female">Female</option>
                                         
                                       </select> </div>
                                    </td>
                                    <td>
                                    <div class="form-group">
                                       <input type="text" id="name" name="txt_Location" class="form-control" required="required" placeholder="Enter Location"  />
                                    </div>
                                    </td>
                                 </tr>
                                 <tr>
                                 <td>
                                 <div class="form-group">
                                       <select class="form-control" required="required" name="Digital_Evidence" id="gender">
                                          <option value="" >Select Digital Evidence</option>
                                          <option value="Computers">Computers</option>
                                          <option value="Mobile">Mobile</option>
                                          <option value="No">No</option>
                                         
                                       </select>  </div>
                                    </td>
                                    <td>
                                    <div class="form-group">
                                       <select class="form-control" required="required" name="Physical_Evidence" id="gender">
                                          <option value="" >Select Physical Evidence</option>
                                          <option value="weapons">weapons</option>
                                          <option value="clothing">clothing</option>
                                          <option value="No">No</option>
                                         
                                       </select>
                                         </div>
                                    </td>
                                 </tr>
                                 <tr>
                                 <td>
                                 <div class="form-group">
                                       <select class="form-control" required="required" name="Biological_Evidence" id="gender">
                                          <option value="" >Select Biological Evidence</option>
                                          <option value="Blood">Blood</option>
                                          <option value="hair">Hair</option>
                                          <option value="No">No</option>
                                         
                                       </select>  </div>
                                    </td>
                                    <td>
                                    <div class="form-group">
                                       <input type="text" id="name" name="txt_Reason_of_Death" class="form-control" required="required" placeholder="Enter Reason of Death"  />
                                    </div>
                                    </td>
                                 </tr>
                                 <tr>
                                 <td colspan="2" align="center">
                                  
                                            <button type="submit" class="form-control">Submit</button>
                                       
                                 </td>
                                 </tr>
                                 </table>
                                    
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
