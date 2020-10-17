<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/menubar.css">
  <link rel="stylesheet" type="text/css" href="css/home_card.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/myaddress.css">
<link rel="stylesheet" type="text/css" href="css/banner.css">
    <title>Responsive Animated Navbar</title>

    <style type="text/css">







    </style>
</head>
<body>






   <div class="container-fluid">
     <div class="row" style="height: 300px;">
       <div class="col-12 banner">
         
     </div>
      <div class="col-12 banner-overlay" style="position: absolute;height: 300px;width: 100%;background-color: rgba(0,0,0,.5);">
               <div id="caption" style="margin-left: 40%;margin-top: 120Px;">

        <h1 >My Address</h1>
        <ul class="contactlink">
          <li><a href="">Home</a></li>
           <li style="border: none;"><a href="">Contact</a></li>
        </ul>
         
       </div>
       
       </div>
   </div>
</div>

<section class="address_form">
  <div class="container">
   <form action="" method="">
    <div class="row">
   
      <div class="col-12 col-sm-12 col-xs-12 col-md-1 col-lg-1 col-xl-1"></div>

       <div class="col-12 col-sm-12 col-xs-12 col-md-5 col-lg-5 col-xl-5">
              <h6>BELLING DETAILS</h6>
         <div class="form-group form-inline" >
           <label for="fname">First Name <span>*</span></label><span style="width: 30%;"></span><label for="lname">Last Name <span>*</span></label>
           <input type="text" class="form-control" id="fname" placeholder="First Name" style="width: 48%; margin-right: 1%;" required>
   
          <input type="text" class="form-control" id="lname" placeholder="Last Name" style="width: 48%;margin-left: 1%;" required>
         </div>


<div class="form-group">
          <label for="companyname" class="control-label">Company Name (Optional)</label>
          <input type="text" class="form-control" id="companyname" placeholder="Company Name">
         
        </div>

        





                  <div class="form-group">

                  <label>Landmark: <span>*</span></label>
                  <input
                    type="text"
                    name="landmark"
                    placeholder="Landmark"
                    class="form-control required"
                  />
                </div>

                <div class="form-group">
                  <label for="inputEmail" class="control-label">Email <span>*</span></label>
                  <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
                  <div class="help-block with-errors"></div>
               </div>
                <div class="form-group">
                  <label for="phone" class="control-label">Phone <span>*</span></label>
                  <input type="number" class="form-control" id="phone" placeholder="Phone" data-error="Bruh, that email address is invalid" required>
                  <div class="help-block with-errors"></div>
               </div>


                <div class="form-group">
                  <label>Street1: <span>*</span></label>
                  <input
                    type="text"
                    name="street1"
                    placeholder="House No. And Street Name"
                    class="form-control required"
                  />
                </div>
                <div class="form-group">
                  <label>Street2: </label>
                  <input
                    type="text"
                    name="street2"
                    placeholder="Apartment (Optional)"
                    class="form-control"
                  />
                </div>
                <div class="form-group">
                  <label>Town: <span>*</span></label>
                  <input
                    type="text"
                    name="town"
                    placeholder="Town"
                    class="form-control required"
                    
                  />
                </div>
                <div class="form-group">
                  <label>Post Office <span>*</span></label>
                  <input
                    type="text"
                    name="po"
                    placeholder="Post Office "
                    class="form-control required"
                  />
                </div>

                <div class="form-group">
                  <label>City: <span>*</span></label>
                  <input
                    type="text"
                    name="city"
                    placeholder="City"
                    class="form-control required"
                  />
                </div>



                 <div class="form-group">
                  <label>Pin Code: <span>*</span></label>
                  <input
                    type="text"
                    name="pin"
                    placeholder="Pin Code"
                    class="form-control required"
                    max=6;
                    min=6;
                  />
                </div>


                <div class="form-group">
                  <label>District: <span>*</span></label>
                  <input
                    type="text"
                    name="dist"
                    placeholder="District"
                    class="form-control required"
                  />
                </div>


        
                <div class="form-group">
                  <label>State: <span>*</span></label>
                  <input
                    type="text"
                    name="state"
                    placeholder="State"
                    class="form-control required"
                  />
                </div>
                  <div class="form-group">
                    <label for="sel1">Country</label>
                    <select class="form-control" id="sel1">
                        <option>India</option>

                    </select>
                  </div>
            </div>
      <div class="col-12 col-sm-12 col-xs-12 col-md-1 col-lg-1 col-xl-1"></div>

       <div class="col-12 col-sm-12 col-xs-12 col-md-5 col-lg-5 col-xl-5">
             <div class="form-group" style="margin-top: 0PX;margin-bottom: 0PX;">
      <h6>ADDITIONAL INFORMATION</h6>
      </div>
           <div class="form-group">
            <label for="comment"></label>
            <label for="comment">Comment:</label>
            <textarea class="form-control" rows="5" id="comment" placeholder="Notes about your order"></textarea>
           </div>
      </div>
      <div class="col-12 col-sm-12 col-xs-12 col-md-1 col-lg-1 col-xl-1"></div>
     <div class="col-12 col-sm-12 col-xs-12 col-md-11 col-lg-11 col-xl-11">
       <div class="form-group">
         <button type="submit" class="btn btn-primary">Submit</button>
      </div>
      </div>

       </div>
</form> 
    </div>
</section>







    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- Latest compiled and minified JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/menubar.js"></script>
<script type="text/javascript" src="js/home_card.js"></script>

<script type="text/javascript">
  $('.banner').css("background-image","url('banner/banner.png')");

</script>
<script type="text/javascript">


</script>

</body>
</html>
