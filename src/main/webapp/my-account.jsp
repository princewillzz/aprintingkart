<!DOCTYPE html>
<html>
<head>
	<title>My Account</title>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

  <link rel="stylesheet" type="text/css" href="css/media-query.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/header1.css">
<link rel="stylesheet" type="text/css" href="css/myaccount.css">

<style type="text/css">


@media (min-width: 992px) {
     .navbar-survival101 {
 
  padding-bottom: 80px;
}
}

@media (max-width: 992px) {
  
    .navbar-survival101 {
  background-color:seagreen;
  padding-bottom: 20px;
}
    .saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data
    {
        font-size: 11px;
    }


}



</style>
</head>
<body>





      
        <div class="container saanvi-customer">
          <div class="row">
            <div class="col-12 saanvi-customer-detail">
              <h3>My Account</h3>
              <hr>
     
            </div>
          </div>
          <div class="row">

            <div class="col-10 col-sm-10 col-xs-10 col-md-4 col-lg-3 col-xl-3 saanvi-cust-pic">
              <h5>Customer Name</h5>
              <img src="images/trend2.jpg">
            </div>
            
          </div>
          <form action="">
          <div class="row">

            <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 saanvi-cust-detail">
              <label>name</label>
                <ul class="cust-pro-detail">
                  <li><i class="fa fa-user pro-icon"></i></li>
                  <li class="pro-data">Kundan Srivastava</li>
                  <li class="edit">Edit</li>
                  <li class="edit-icon"><i class="fa fa-pen"></i></li>
                  <li class="sv btn btn-success" style="display:none" href="#" >save</li>
                 
                </ul>
            
            </div>
            <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 saanvi-cust-detail">
             <label>Email</label>
                <ul class="cust-pro-detail">
                  <li><i class="fa fa-envelope pro-icon"></i></li>
                  <li class="pro-data">Kundanitrd17@gmail.com</li>
                  <li class="edit">Edit</li>
                  <li class="edit-icon"><i class="fa fa-pen"></i></li>
                  <li class="sv btn btn-success" style="display:none">save</li>
                 
                </ul>
            </div>
            <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 saanvi-cust-detail">
            <label>Address</label>
                <ul class="cust-pro-detail">
                  <li><i class="fa fa-address-card pro-icon"></i></li>
                  <li class="pro-data">Upper Kulti</li>
                  <li class="edit">Edit</li>
                  <li class="edit-icon"><i class="fa fa-pen"></i></li>
                  <li class="sv btn btn-success" style="display:none">save</li>
                 
                </ul>
            </div>
            <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 saanvi-cust-detail">
            <label>Ph Number</label>
                <ul class="cust-pro-detail">
                  <li><i class="fa fa-mobile pro-icon"></i></li>
                  <li class="pro-data"> 0987654321</li>
                  <li class="edit">Edit</li>
                  <li class="edit-icon"><i class="fa fa-pen"></i></li>
                  <li class="sv btn btn-success" style="display:none">save</li>
                 
                </ul>
            </div>
              <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 saanvi-cust-detail">
            <label>Password</label>
                <ul class="cust-pro-detail">
                  <li><i class="fa fa-lock pro-icon"></i></li>
                  <li class="pro-data">Password</li>
                  <li class="edit">Edit</li>
                  <li class="edit-icon"><i class="fa fa-pen"></i></li>
                  <li class="sv btn btn-success" style="display:none">save</li>
                 
                </ul>
            </div>
             <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 all-save">
            <button class="btn btn-success " style="margin-left: 40%; background-color: rgb(255, 195, 0);color:black;border-radius: 40px;margin-top: 20px;border: none;margin-bottom: 40px;border: none;">All Sbumit</button>
            </div>
           
          </div>
        </form>
        </div>

 

















<script type="text/javascript" src="js/header1.js"></script>

<script type="text/javascript">
  
  $(document).on('click','.saanvi-customer .saanvi-cust-detail .cust-pro-detail .edit-icon',function(){

    $(this).hide();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .edit').hide();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .sv').show();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data').attr('contenteditable','true').focus();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data').css("background-color","white");

  });

  $(document).on('click','.saanvi-customer .saanvi-cust-detail .cust-pro-detail .sv',function(){

    $(this).hide();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .edit').show();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .edit-icon').show();
    $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data').attr('contenteditable','false');
     $(this).siblings('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data').css("background-color","#FEFDFC");

  });
  
  $(document).on('click','.saanvi-customer .saanvi-cust-detail .cust-pro-detail .all-save .btn',function(){

    $('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .sv').hide();
    $('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .edit').show();
    $('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .edit-icon').show();
    $('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data').attr('contenteditable','false');
     $('.saanvi-customer .saanvi-cust-detail .cust-pro-detail .pro-data').css("background-color","#FEFDFC");

  });

</script>

</body>
</html>