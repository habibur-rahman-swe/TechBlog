<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
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
        
        <!--navigation bar-->
        <%@include file="normal_navbar.jsp" %>
        
        <main class="d-flex align-items-center bg-primary banner-background" style="height: 80vh">
            <div class="container">
                
                <div class="row">
                    
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header bg-primary text-center">
                                <p><i class="fa fa-user-plus fa-2x p-2"></i> <br> Login Here</p>
                            </div>

                            <div class="card-body">
                                <form>
                                <div class="mb-3">
                                  <label for="user_email" class="form-label">Email address</label>
                                  <input type="email" class="form-control" id="user_email" name="user_email" aria-describedby="emailHelp">
                                  <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>
                                <div class="mb-3">
                                  <label for="user_password" class="form-label">Password</label>
                                  <input type="password" class="form-control" id="user_password" name="user_password">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="ckeck" name="check">
                                  <label class="form-check-label" for="check">Remember me</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                              </form>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </main>
        
        <!--Java Script-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        
    </body>
</html>
