<!DOCTYPE html>
<html>
<head>
  <title>OTP Verification</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<link rel="stylesheet" type="text/css" href="css/mediaquery.css">
<link rel="stylesheet" type="text/css" href="css/sign_in_up.css">
<link rel="stylesheet" type="text/css" href="css/sign_in_up_poster.css">

 <style type="text/css">


 	.otp .otp-page
 	{
 		
 		text-align: center;
 		padding: 80px 30px 80px 30px;
 		background-color: white;
 	}
 	.otp .otp-page .otp-content
 	{
 		-webkit-box-shadow: 2px 4px 17px 0px rgba(0,0,0,0.75);
		-moz-box-shadow: 2px 4px 17px 0px rgba(0,0,0,0.75);
		box-shadow: 2px 4px 17px 0px rgba(0,0,0,0.75);
		padding-bottom: 20px;
 	}
 	.otp .otp-page .otp-content	 h6
 	{
 		 background-color: background: #7C3DD4;
background: -webkit-radial-gradient(center, #7C3DD4, #E9E1E2);
background: -moz-radial-gradient(center, #7C3DD4, #E9E1E2);
background: radial-gradient(ellipse at center, #7C3DD4, #E9E1E2);;

 		padding: 10px 0px;
 		color: white;
 	}
 	form
 	{
 		padding-top: 15px;
 	}
 	form input
 	{
 		height: 41px;
 		width:41px;
 		-webkit-box-shadow: 2px 5px 5px 0px rgba(0,0,0,0.75);
		-moz-box-shadow: 2px 5px 5px 0px rgba(0,0,0,0.75);
		box-shadow: 2px 5px 5px 0px rgba(0,0,0,0.75);
		border: none;
		text-align: center;
 	}
 	form .otp-button
 	{
 		background-color:#9381E8;
 		width: 200px;
 		margin-top: 35px;
 	
 		border-radius: 40px;
 		color: white;
 	}
 .otp .otp-page .otp-content .r-otp
 	{
 		font-size: 14px;
 		
 		color:#8F8E8D ;    
 	}

.company-title-table th:nth-child(1)
{
  color: #F7E45C;
  font-weight: 700;
  font-size:60px;
}
.company-title-table th:nth-child(2)
{
  color: white;
  
  font-size:60px;
}


 </style>

</head>
<body>
	<div class="container otp">

		<div class="row">

			
			<div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 otp-poster" >
		 		<table class="company-title-table" style="vertical-align: middle;"> 
		          <tr>
		            <th>OTP</th>
		            <th>&nbsp;Varification</th>
		          </tr>
		          <tr>
		            <td class="apk" colspan="2"><span>Apk</span> Printing Cart</td>
		          </tr>
		          <tr>
		            <td class="enterprise" colspan="2">Need somthing printing fast</td>
		          </tr>
        		</table>
			</div>
			<div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 otp-page" >

					<div class="otp-content">
						<h6>OTP Verification</h6>
   					 		<p>Enter OTP</p>
    					
   						 <form>
						      <input type="text" maxLength="4" size="1" min="0" max="9" pattern="[0-9]{1}" />
                   <input type="text" maxLength="4" size="1" min="0" max="9" pattern="[0-9]{1}" />
                    <input type="text" maxLength="4" size="1" min="0" max="9" pattern="[0-9]{1}" />
                     <input type="text" maxLength="4" size="1" min="0" max="9" pattern="[0-9]{1}" />
						
     						 <br>
      						<button class="btn  btn-embossed otp-button" >Verify</button>
   						</form>
    
		    			<div>
		  
		     			<a href="#" class="r-otp">Resend OTP?</a>
		     
		    			</div>
					</div>
  			</div>
		
		</div>
		
	</div>







<!--End Footer-->

	<script type="text/javascript">
		$(function() {
  'use strict';

  var body = $('body');

  function goToNextInput(e) {
    var key = e.which,
      t = $(e.target),
      sib = t.next('input');

    if (key != 9 && (key < 48 || key > 57)) {
      e.preventDefault();
      return false;
    }

    if (key === 9) {
      return true;
    }

    if (!sib || !sib.length) {
      sib = body.find('input').eq(0);
    }
    sib.select().focus();
  }

  function onKeyDown(e) {
    var key = e.which;

    if (key === 9 || (key >= 48 && key <= 57)) {
      return true;
    }

    e.preventDefault();
    return false;
  }
  
  function onFocus(e) {
    $(e.target).select();
  }


});
	</script>
</body>
</html>
