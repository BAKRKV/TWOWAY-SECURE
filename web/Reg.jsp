<html>
    <head>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
                <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
    img {width:100%;}
</style>
        
    </head>
    <body>
<section class="testimonial py-5" id="testimonial">
    <div class="container">
        <div class="row ">
            <div class="col-md-4 py-5 bg-primary text-white text-center ">
                <div class=" ">
                    <div class="card-body">
                        <img src="http://www.ansonika.com/mavia/img/registration_bg.svg" style="width:30%">
                        <h2 class="py-3">Registration</h2>
                        <h1>Cloud</h1>
                    </div>
                </div>
            </div>
            <div class="col-md-8 py-5 border">
                <h4 class="pb-4">Please fill with your details</h4>
                <form action="RegDB.jsp" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <input id="Full Name" name="FullName" placeholder="Full Name" class="form-control" type="text">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" class="form-control" name="email" id="inputEmail4" placeholder="Email">
                        </div>
                      </div>
                    
                      <div class="form-row">
                        <div class="form-group col-md-12">
                          <input type="password" name="Full" placeholder="Password" class="form-control" type="text">
                        </div>
                      </div>
                    
                    
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <input id="Mobile No." name="Mobile" placeholder="Mobile No." class="form-control" required="required" type="text">
                        </div>
                        <div class="form-group col-md-6">
                                  
                            <select id="inputState" class="form-control" name="ab">
                                    <option selected>Choose ...</option>
                                    <option name="ab" value="1024"> 1 TB</option>
                                    <option name="ab" value="2048"> 2 TB</option>
                                    <option name="ab" value="3096"> 3 TB</option>
                                    <option name="ab" value="1"> Trial-1GB</option>
                                  </select>
                        </div>
                      
                    </div>
                    <div class="form-row">
                    <div class="form-group col-md-12">
                        <input type="text" name="PIN" placeholder="enter 4 digit code" pattern="[0-9]{4}" title="Only 4 Digit Number"  required="">
                    </div>
                        </div>
                    <div class="form-row">
                        <div class="form-group">
                            <div class="form-group">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                                  <label class="form-check-label" for="invalidCheck2">
                                    <small>By clicking Submit, you agree to our Terms & Conditions, Visitor Agreement and Privacy Policy.</small>
                                  </label>
                                </div>
                              </div>
                    
                          </div>
                    </div>
                    
                    <div class="form-row">
                        <button type="submit" class="btn btn-success btn-lg btn-block">Register</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</section>

    </body>
</html>