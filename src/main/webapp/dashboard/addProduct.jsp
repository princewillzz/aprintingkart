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

  <link rel="stylesheet" type="text/css" href="http://localhost:8080/dashboard/css/addProduct.css">
  <style type="text/css">

  </style>
</head>

<body>


  <%@include file="adminHeader.jsp" %>

  <div class="content">
    <form>
      <div class="container add-product">
        <div class="row add-product-form" style="">
          <div class="col-12 col-xs-12 col-sm-12 col-md-5 col-lg-5 col-xl-5 add-product-form-content">
            <h6>ADD PRODUCT</h6>

            <div class="form-group">
              <label>Product Name</label>
              <input type="text" class="form-control">
            </div>

            <div class="form-group">
              <label for="comment">Comment:</label>
              <textarea class="form-control" rows="5" id="comment"></textarea>
            </div>
            <div class="form-group">
              <label>Category</label>
              <input type="text" class="form-control">
            </div>
          </div>
          <div class="col-12 col-xs-12 col-sm-12 col-md-1 col-lg-1 col-xl-1 add-product-form-content"></div>
          <div class="col-12 col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 add-product-form-content">


            <div class="card" style="background-color:#EFEEF1;border: none; ">
              <img class="card-img-top" src="images/background.gif" alt="Card image"
                style="width:100%;height:220px;margin-bottom: 20px;">
              <div class="file btn  btn-file"
                style="overflow: hidden;position: relative;background-color: #09024B;color: white;">
                Upload or edit image
                <input type="file" name="" style="position: absolute;font-size: 50px;opacity: 0;right: 0;top: 0;">
              </div>
            </div>

          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <center> <button href="#" class="btn" style="margin-top: 20px;background-color: #09024B;color:white;">Add
                Product Now</button></center>
          </div>
        </div>
      </div>
    </form>

  </div>
























  <script type="text/javascript">


  </script>
</body>

</html>