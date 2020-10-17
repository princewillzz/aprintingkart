<!DOCTYPE html>
<html>

<head>


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Printing Kart</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>s

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link rel="stylesheet" type="text/css" href="http://localhost:8080/dashboard/css/manageProfile.css">

  <style type="text/css">




  </style>
</head>

<body>


  <%@include file="adminHeader.jsp" %>

  <div class="content">

    <div class="container apk-manage-profile">
      <div class="row">
        <div class="col-12 apk-manage-profile-detail">
          <h3>Manage Profile</h3>
        </div>
      </div>
      <form action="#">
        <div class="row">

          <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 apk-profile-detail">
            <label>name</label>
            <ul class="cust-pro-detail">
              <li><i class="fa fa-user pro-icon"></i></li>
              <li class="pro-data">Kundan Srivastava</li>
              <li class="edit">Edit</li>
              <li class="edit-icon"><i class="fa fa-pen"></i></li>
              <li type="submit" class="sv btn btn-success" style="display:none" href="#">save</li>

            </ul>

          </div>
          <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 apk-profile-detail">
            <label>Email</label>
            <ul class="cust-pro-detail">
              <li><i class="fa fa-envelope pro-icon"></i></li>
              <li class="pro-data">Kundanitrd17@gmail.com</li>
              <li class="edit">Edit</li>
              <li class="edit-icon"><i class="fa fa-pen"></i></li>
              <li type="submit" class="sv btn btn-success" style="display:none">save</li>

            </ul>
          </div>
          <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 apk-profile-detail">
            <label>Address</label>
            <ul class="cust-pro-detail">
              <li><i class="fa fa-address-card pro-icon"></i></li>
              <li class="pro-data">Upper Kulti</li>
              <li class="edit">Edit</li>
              <li class="edit-icon"><i class="fa fa-pen"></i></li>
              <li type="submit" class="sv btn btn-success" style="display:none">save</li>

            </ul>
          </div>
          <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 apk-profile-detail">
            <label>Ph Number</label>
            <ul class="cust-pro-detail">
              <li><i class="fa fa-mobile pro-icon"></i></li>
              <li class="pro-data">0987654321</li>
              <li class="edit">Edit</li>
              <li class="edit-icon"><i class="fa fa-pen"></i></li>
              <li type="submit" class="sv btn btn-success" style="display:none">save</li>

            </ul>
          </div>
          <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7 col-xl-7 apk-profile-detail">
            <label>Password</label>
            <ul class="cust-pro-detail">
              <li><i class="fa fa-lock pro-icon"></i></li>
              <li class="pro-data">Password</li>
              <li class="edit">Edit</li>
              <li class="edit-icon"><i class="fa fa-pen"></i></li>
              <li type="submit" class="sv btn btn-success" style="display:none">save</li>

            </ul>
          </div>
        </div>
      </form>
    </div>



  </div>






















  <script type="text/javascript" src="http://localhost:8080/dashboard/js/manageProfile.js"></script>
</body>

</html>