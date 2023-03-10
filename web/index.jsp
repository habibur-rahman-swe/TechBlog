<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"><!-- comment -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        
        <style>
            .banner-background {
                clip-path: polygon(0 0, 49% 0, 100% 0, 100% 100%, 75% 94%, 51% 100%, 24% 94%, 0 100%);
            }
        </style>
    </head>
    <body>
        
        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>
        
        <!--banner-->
        
        <div class="container-fluid p-0 m-0 text-white">
            
            <div class="jumbotron bg-primary pb-5 banner-background">
                
                <div class="container">
                    <h3 class="display-3">Welcome to Tech Blog</h3>
                    <p>Konami’s official Silent Hill 2 remake, powered by Unreal Engine 5, is currently in development, but TeaserPlay wanted to show what the game could look like running on actual PS5 hardware. The Bloober Team will be developing the remake and a new element that you’ll find in this version is an over-the-shoulder camera.</p>
                    <br>
                    <a href="register_page.jsp" class="btn btn-outline-light btn-lg"> <i class="fa fa-user-plus"></i> Start ! It's Free</a>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <i class="fa fa-user-circle fa-spin"></i> Login</a>
                </div>
                
            </div>
        </div>
        
        <!--cards-->
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-4 mb-2">
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">Php Programming Language</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn bg-primary text-white">Read More ...</a>
                    </div>
                  </div>
                </div>
            </div>
        
        
         </div>
        
        <!--Java Script-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        
    </body>
</html>
 