<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error_page.jsp"%>

<%
User user = (User)session.getAttribute("currentUser");

if (user == null) {
    response.sendRedirect("login_page.jsp");
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
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
        
          <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-ranking-star">Tech Blog</i></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#"><i class="fa-solid fa-house-chimney"></i>Learn Code With Habib</a>
                </li>

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa-regular fa-cubes-stacked"></i> Categories
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Programming Language</a></li>
                    <li><a class="dropdown-item" href="#">Project Implementation</a></li>
                    <li><a class="dropdown-item" href="#">Data Structure</a></li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="#"><i class="fa-solid fa-address-card"></i>Contacts</a>
                </li>
              </ul>
              <ul class="navbar-nav mr-right">
                <li class="nav-item">
                  <a class="nav-link active" href="register_page.jsp"><i class="fa-solid fa-user-circle"></i><%= user.getName() %></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="register_page.jsp"><i class="fa-solid fa-user-plus"></i>Log Out</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        
        <!--end of navbar-->
        
        <!--Java Script-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        
    </body>
</html>
