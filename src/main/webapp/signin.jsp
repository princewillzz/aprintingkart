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
  <link rel="stylesheet" type="text/css" href="css/singin.css">

  <style type="text/css">






  </style>
</head>

<body>



  <div class="container login1 otp">

    <div class="row">


      <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 ncol-xl-6 otp-poster" style="">
        <table class="company-title-table" style="vertical-align: middle;">
          <tr>
            <th>Sign</th>
            <th>&nbsp;In</th>
          </tr>
          <tr>
            <td class="apk" colspan="2"><span>Apk</span> Printing Cart</td>
          </tr>
          <tr>
            <td class="enterprise" colspan="2">Need somthing printing fast</td>
          </tr>
        </table>
      </div>
      <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 login-page">

        <div class="container " style="margin-top: 20px;">



          <div class="panel-body login">



            <center><i class="fa fa-user-o u" aria-hidden="true"></i></center>
            <form action="/user/login-customer" method="POST" class="form-horizontal" id="validate">

              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />


              <div class="form-group">
                <div class=" col-12 col-md-8 container input-group">
                  <input name="username" type="email" id="email" class="form-control" placeholder="Enter E-mail"
                    required />

                  <div class="input-group-append">
                    <span class="input-group-text"
                      style="border: none;border-radius: 0px 20px 20px 0px;background-color: #F7E45C;">
                      <i class="fa fa-user-o" style="background-color: #F7E45C;font-size: 25px;"></i>
                    </span>
                  </div>
                </div>


              </div>
              <div class="form-group">
                <div class=" col-12 col-md-8 container input-group">
                  <input name="password" type="password" id="password-field" class="form-control"
                    placeholder="Enter Password" required />

                  <div class="input-group-append">
                    <span class="input-group-text"
                      style="border: none;border-radius: 0px 20px 20px 0px;background-color: #F7E45C;">
                      <i class="fa fa-fw fa-lock field-icon toggle-password" toggle="#password-field"
                        style="background-color: #F7E45C;font-size: 25px;"></i>
                    </span>
                  </div>
                </div>


              </div>

              <div class="radio col-md-8 container">
                <label style="color: rgba(0,0,0,.5);"><input type="radio" name="optradio"
                    style="margin-right: 10px;background-color: gray;" checked>Remember Me<input type="radio"
                    name="optradio" style="margin-left: 60px;margin-right: 10px">Forgot Me</label>
              </div>


              <button type="submit" class="btn btn-default login-button">Login</button><br>
              <div class="dont-have-acc col-md-8 container">
                <a href="#">Dont have an account ?</a><button type="submit" class="btn btn-default signup">Create An
                  Account</button><br>
              </div>

            </form>
          </div>


        </div>
      </div>

    </div>


  </div>


  <!--footer-->


  <!--End Footer-->


  <script type="text/javascript">
    $(".toggle-password").click(function () {

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