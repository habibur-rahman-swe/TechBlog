<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
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
        
        <main class="d-flex align-items-center bg-primary banner-background" style="height: 100vh">
            <div class="container">
                
                <div class="row">
                    
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header bg-primary text-center">
                                <p><i class="fa fa-user-plus fa-2x p-2"></i> <br> Sign Up</p>
                            </div>

                            <div class="card-body">
                                <form id="reg-form" action="RegisterServlet" method="POST">
                                    <div class="mb-0">
                                        <label for="user_name" class="form-label">User Name</label>
                                        <input type="text" class="form-control form-control-sm" id="user_name" name="user_name">
                                     </div>
                                    <div class="mb-0">
                                      <label for="user_email" class="form-label">Email address</label>
                                      <input type="email" class="form-control form-control-sm" id="user_email" aria-describedby="emailHelp" name="user_email">
                                      <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-0">
                                      <label for="user_password" class="form-label">Password</label>
                                      <input type="text" class="form-control form-control-sm" id="user_password" name="user_password">
                                    </div>
                                    <div class="mb-1">
                                        <label for="user_gender" class="form-gender">Gender</label> <br>
                                        <input type="radio" name="user_gender" value="Male" id="user_gender" class="form-check-input" checked> Male
                                        <input type="radio" name="user_gender" value="Female" id="user_gender" class="form-check-input"> Female
                                    </div>
                                  
                                    <div class="form-floating mb-1">
                                        <textarea class="form-control form-control-sm" placeholder="Something about yourself" id="about_user" rows="3" name="about_user"></textarea>
                                        <label for="about_user">About</label>
                                    </div>
                                
                                    <div class="mb-1 form-check">
                                        <input type="checkbox" class="form-check-input" id="check" name="check">
                                        <label class="form-check-label" for="check">Accept User Agreement</label>
                                    </div>
                                    <div class="container text-center" id="loader" style="display: none;">
                                        <span class="fa fa-refresh fa-spin fa-1x"></span>
                                        <h4>Please wait..</h4>
                                    </div>
                                    
                                    <button type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script src="JS/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        
        <script>
            $(document).ready(function() {
                console.log("loaded....");
                
                $('#reg-form').on('submit', function(event) {
                   
                   event.preventDefault();
                   
                   let form = new FormData(this);
                   $('#submit-btn').hide();
                   $('loader').show();
                   
                   // send register servlet
                   
                   $.ajax({
                      url: "RegisterServlet",
                      type: 'POST',
                      data: form,
                      success: function(data, textStatus, jqXHR) {
                          console.log(data);
                          $('#submit-btn').show();
                          $('loader').hide();
                          
                          swal("Registered Successfully! We are redirectiong to login page...")
                          .then((value) => {
                            window.location = "login_page.jsp";
                          });
                      }, 
                      error: function(jqXHR, textStatus, errorThrown) {
                          $('#submit-btn').show();
                          $('loader').hide();
                          swal("Something Wrong! Try again...");
                      },
                      processData: false,
                      contentType: false
                   });
                   
                });
            });
            
        </script>
    </body>
</html>
