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
  <link rel="stylesheet" type="text/css" href="http://localhost:8080/dashboard/css/datatable.css">

  <link rel="stylesheet" type="text/css" href="http://localhost:8080/dashboard/css/manageOrder.css">

  <style type="text/css">


  </style>
</head>

<body>


  <%@include file="adminHeader.jsp" %>

  <div class="content">

    <div class="container product-manager" style="margin-bottom: 100px;">
      <div class="row product-manager-heading">
        <div class="col-12 col-sm-12 col-xs-12 col-md-5 col-lg-5 col-xl-5">
          <h1>Manage Order</h1>
        </div>
        <div class="col-12 col-sm-12 col-xs-12 col-md-7 col-lg-7col-xl-7">
          <ul style="">
            <li><button type="button" class="btn dispatch-btn">Dispatch Order</button></li>
            <li><button type="button" class="btn recieved-btn">recieved Order</button></li>
            <li><button type="button" class="btn order-history-btn">Order History</button></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container" style="">
      <div class="row">
        <div class="col-12 table-responsive-sm">
          <table id="example" class="table table-striped" style="width:100%">
            <thead>
              <tr>
                <th>Order</th>
                <th>Customer Id</th>
                <th>Discription</th>
                <th>Date</th>
                <th>Total</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="" data-target="#myOrderModal" data-toggle="modal">1001</a></td>
                <td><a href="" data-target="#myCustomerModal" data-toggle="modal">2001</a></td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
              </tr>
            </tbody>

          </table>
        </div>

      </div>
    </div>


    <div class="modal fade" id="myOrderModal">
      <div class="modal-dialog">
        <div class="modal-content">

          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Order Detail</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>

          <!-- Modal body -->
          <div class="modal-body">
            <table>
              <tr>
                <th> </th>
                <td> </td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
            </table>
          </div>

          <!-- Modal footer -->
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          </div>

        </div>
      </div>
    </div>



    <div class="modal fade" id="myCustomerModal">
      <div class="modal-dialog">
        <div class="modal-content">


          <div class="modal-header">
            <h4 class="modal-title">Customer Deatil</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>

          <div class="modal-body">
            <table>
              <tr>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
            </table>
          </div>


          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          </div>

        </div>
      </div>
    </div>
















    <script type="text/javascript">
      $(document).ready(function () {
        $('#example').DataTable();
      });
    </script>



    <script type="text/javascript" src="http://localhost:8080/dashboard/js/manageOrder.js"></script>
    <script type="text/javascript" src="http://localhost:8080/dashboard/js/datatable.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>






</body>

</html>