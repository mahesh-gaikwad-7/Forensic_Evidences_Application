<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@page import="com.connection.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                                 <a href="Higher_Officer_HomePage.jsp" class="custom-btn custom-border-btn btn">Search Info
                                    
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



            <section class="hero-section d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mx-auto">
                            <form class="custom-form" role="form" action="report" method="post">
                                 <div  style="width: 100%">
                                 <br/>
                                 <br/>
                                   <h3 class="hero-title text-center mb-4 pb-2">Search Victim ID </h3>
                                   <table style="width: 100%">
										<tr>
											
											<td>
											<div class="form-group">
                                      
											<select class="form-control" name="Victim_ID" id="id"
													required="required">
													<option value="">Select Victim ID</option>
													<%
														try {

															int i = 1;
															String query = "select * from tblvictim_info";
															Connection conn = Dbconn.conn();
															Statement stmt = conn.createStatement();
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
													%>
													<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>

													<%
														}
														} catch (Exception e) {
															e.printStackTrace();
														}
													%>
												</select>
									 </div>
												</td>
											</tr>
											
										
										<tr>
										<td  align="center">
										 <button type="submit" class="form-control">Print</button>
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
