
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! Something Went Wrong</title>
        
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
        <div class="container text-center">
            <img src="images/error.jpg" alt="" class="img-fluid"/>
            <h3 class="display-3">Sorry! something went wrong...</h3>
            <%= exception%>
            <a href="index.jsp" class="btn btn-primary btn-lg text-white mt-3">HOME</a>
        </div>
    </body>
</html>
