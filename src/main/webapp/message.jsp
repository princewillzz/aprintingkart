<!DOCTYPE html>
<html>
<head>


 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Printing Kart</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link rel="stylesheet" type="text/css" href="css/dashboard.css">
  <link rel="stylesheet" type="text/css" href="css/message.css">


  <style type="text/css" >

/* ==========================================================================
  Author: Alex Megahy
  Date: 29/09/2019
  Version: 1
========================================================================== */


/* ==========================================================================
  Default tags
========================================================================== */

/* Accordion controls 
========================================================================== */


/* Main accordion container 
========================================================================== */
.active
{
	background-color: rgba(0,0,0,.6);
}
                    
</style>
</head>
<body>



    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn" style=""></i>
      </label>
      <div class="left_area" style="float: left" >
        <img src="images/icon.png" style="">
      </div>
      <div class="right_area"style="float:right">
        <a href="#" class="logout_btn">Sign Out</a>
      </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">

        <img src="images/computer2.png" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
      </div>
      <div class="mobile_nav_items">
        <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
        <a href="#"><i class="fas fa-cogs"></i><span>Manage Order</span></a>
        <a href="#"><i class="fas fa-table"></i><span>Manage Product</span></a>
        <a href="#"><i class="fas fa-th"></i><span>Notification</span></a>
        <a href="#"><i class="fas fa-info-circle"></i><span>Profile</span></a>
        
      </div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
            <h3>Printing <span>Kart</span></h3>
        <img src="images/computer2.png" class="profile_image" alt="">
        <h4>Jessica</h4>
      </div>
       <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
        <a href="#"><i class="fas fa-cogs"></i><span>Manage Order</span></a>
        <a href="#"><i class="fas fa-table"></i><span>Manage Product</span></a>
        <a href="#"><i class="fas fa-th"></i><span>Notification</span></a>
        <a href="#"><i class="fas fa-info-circle"></i><span>Profile</span></a>
    </div>
    <!--sidebar end-->

    <div class="content">

<div class="container">
	<div class="row">
		<div class="col-12">




  <div class="accordion bg-light">
    <h5 style="margin: 0px;"><i class="fa fa-comment" style="margin-right: 10px;"></i>Title<br><span style="font-size: 13px;padding-left: 30px;">2hrs Ago</span></h5>
    <button><i class="fa fa-chevron-down rotate"></i></button>
  </div>
  <div class="accordion-panel">
    <h6>Sub-title </h6>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin facilisis lorem sed dolor viverra, facilisis aliquet lorem posuere. Donec commodo, augue a aliquet elementum, urna nibh tincidunt lacus, et consectetur magna nunc ac elit. Quisque auctor vehicula purus, interdum aliquet massa scelerisque vitae. Vivamus sit amet libero id ipsum interdum sollicitudin. Donec et urna sit amet quam varius venenatis. Nam et massa urna. Quisque quis urna leo. Sed at libero elementum dui bibendum viverra. Maecenas mattis accumsan massa eget eleifend. Sed hendrerit rutrum ante, in posuere nisi elementum sed. Sed pharetra accumsan tempus. Donec a ornare risus. Cras commodo tincidunt turpis at facilisis. Vestibulum id odio nulla. Maecenas pharetra nibh quam, et dictum leo laoreet et.</p>
  </div>
</div>



</div>
</div>
</div>









    

   
   
 







<script type="text/javascript" src="js/dashboard.js"></script>
<script type="text/javascript" src="js/message.js"></script>
<script type="text/javascript">
   
</script>
</body>
</html>