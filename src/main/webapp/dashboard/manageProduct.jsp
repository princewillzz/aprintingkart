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

  <link rel="stylesheet" type="text/css" href="http://localhost:8080/dashboard/css/manageProduct.css">

  <style type="text/css">


  </style>
</head>

<body>


  <%@include file="adminHeader.jsp" %>

  <div class="content">
    <div class="container main">
      <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 manage_product">
          <h1>Manage Product</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 product_name ">
          <div class="container-fluid">

            <div class="row">
              <div class="col-12 table-responsive" style="height: 370px;background-color: #EFEEF1;overflow: auto;">
                <table class="table table-borderless">
                  <thead>
                    <tr class="yellow">

                      <th colspan="2">PRODUCT NAME</th>
                      <th colspan="2">IN STOCK</th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox"></td>
                      <td>PRODUCT NAME</td>
                      <td>$20</td>
                      <td>
                        <button class="btn btn-primary delete"><i class="fa fa-trash-alt"></i></button>
                      </td>
                    </tr>
                    <tr>
                      <td><input type="checkbox"></td>
                      <td>PRODUCT NAME</td>
                      <td>$20</td>
                      <td>
                        <button class="btn btn-primary delete"><i class="fa fa-trash-alt"></i></button>
                      </td>
                    </tr>


                  </tbody>
                </table>
              </div>
            </div>

          </div>
          <div class="row">
            <div class="col-12 add_new_product_button">
              <center> <a href="/dashboard/product"><button class="btn  add_product">Add New Product</button></a>
              </center>
            </div>
          </div>

        </div>
        <!--end of product_main-->
        <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1 gap"></div>
        <!--end of gap-->
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12 product_categories">

          <div class="container-fluid">
            <div class="row">
              <div class="col-12 table-responsive" style="height: 370px;background-color: #EFEEF1;overflow: auto;">
                <table class="table table-borderless">
                  <thead>
                    <tr class="yellow">
                      <th>PRODUCT CATEGORIES</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>CATEGORI1</td>
                      <td>
                        <button class="btn btn-primary delete"><i class="fa fa-trash-alt"></i></button>
                      </td>
                    </tr>
                    <tr>
                      <td>CATEGORI1</td>
                      <td>
                        <button class="btn btn-primary delete"><i class="fa fa-trash-alt"></i></button>
                      </td>
                    </tr>
                    <tr>
                      <td>CATEGORI1</td>
                      <td>
                        <button class="btn btn-primary delete"><i class="fa fa-trash-alt"></i></button>
                      </td>
                    </tr>

                    <tr>
                      <td>CATEGORI1</td>
                      <td>
                        <button class="btn btn-primary delete"><i class="fa fa-trash-alt"></i></button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-12 add_new_category_button">

              <center><a href="/dashboard/category"><button class="btn  add_product">Add New Categories</button></a>
              </center>
            </div>
          </div>

        </div>
        <!--end of product_categories-->
      </div>
    </div>
  </div>




















  <script type="text/javascript">

    $(document).ready(function () {
      $('button.delete').click(function () {

        $(this).parent().parent().remove();

      });
    });
  </script>
</body>

</html>