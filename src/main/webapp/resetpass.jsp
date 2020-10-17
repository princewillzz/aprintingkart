<!DOCTYPE html>
<html>
<head>
  <title>Saanvi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
<link rel="stylesheet" type="text/css" href="css/mediaquery.css">
<link rel="stylesheet" type="text/css" href="css/sign_in_up.css">
<link rel="stylesheet" type="text/css" href="css/sign_in_up_poster.css">



 <style type="text/css">







 

#primary .forgot-password
{
  color: #8F8E8D;
  font-size: 14px;
  letter-spacing: 1px;
}

.company-title-table th:nth-child(1)
{
  color: #F7E45C;
  font-weight: 700;
  font-size:50px;
  padding: 0px;
  margin: 0px;
}


 </style>
</head>
<body>

 

  <div class="container login1 otp">

    <div class="row">

      
      <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 ncol-xl-6 otp-poster" style="clip-path: polygon(0 0, 91% 0, 100% 100%, 0% 100%);border-radius: 0px 0px 130px 0px;">
        <table class="company-title-table" style="vertical-align: middle;"> 
          <tr>
            <th>Reset <span><h1 style="margin: 0px;color: white;">Password</h1></span></th>
          </tr> 
          <tr>
            <td class="apk" colspan="2"><span>Apk</span> Printing Cart</td>
          </tr>
          <tr>
            <td class="enterprise" colspan="2">Need somthing printing fast</td>
          </tr>
        </table>
      </div>
      <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 login-page" >

          <div class="container " style="margin-top: 20px;">


     
        <div class="panel-body login">
            <form action="" class="form-horizontal" id="validate">
             
                  
                      <center><i class="fa fa-user-o u" aria-hidden="true"></i></center>
                    

                       <div class="form-group"  >
                            <div class=" col-12 col-md-8 container">
                                <input type="email" name="email" class="form-control " placeholder="Enter E-mail"required  />
                            </div>
                        </div>
              

                        <div class="form-group">
                            <div class=" col-12 col-md-8 container input-group">
                                <input type="password"  id="password-field" class="form-control" placeholder="       Enter Password" required/>
                               <div class="input-group-append" >
                              <span class="input-group-text" style="border: none;border-radius: 0px 20px 20px 0px;background-color: #F7E45C;">
                               <i class="fa fa-fw fa-eye field-icon toggle-password" toggle="#password-field" style="background-color: #F7E45C;"></i>
                             </span>
                          </div>
                       </div>


                        </div>
                       
                       
                       <div class="form-group">
                            <div class=" col-12 col-md-8 container">
                                <input type="password"   class="form-control" placeholder="Re Enter Password" required/>

                            </div>
                        </div>

                        <center>
                        <button type="submit" class="btn btn-default login-button">Update</button><br>
                   </center>
                    </form> 
                    </div>
           
         
        </div>
    </div>

</div>

    
        </div>
      
    </div>
    
  </div>

  <!--footer-->
  

<!--End Footer-->


<script type="text/javascript">
  $(".toggle-password").click(function() {

  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});
</script>

</body>
</html>
