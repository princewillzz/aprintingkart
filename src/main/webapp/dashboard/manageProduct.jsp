<!DOCTYPE html>

<html>

<head>
    <title>Album Bazaar</title>
    <meta charset="utf-8">
    <meta name="_csrf" content="${_csrf.token}" />
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}" />
    <!-- ... -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">



    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/addProduct.css">

    <style type="text/css">

#viewImagesList table tr th,.productFilterable  table tr th input,.productFilterable  table tr td ,#viewImagesList table tr td
{
  text-align: center;
  vertical-align: middle;
}

#viewImagesList table tr th h6
{

font-size: 13px; 
}

#viewImagesList table tr:nth-child( odd )
{
 background: rgba(226,226,226,1);
background: -moz-linear-gradient(left, rgba(226,226,226,1) 0%, rgba(209,209,209,1) 1%, rgba(133,128,133,1) 51%, rgba(254,254,254,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(226,226,226,1)), color-stop(1%, rgba(209,209,209,1)), color-stop(51%, rgba(133,128,133,1)), color-stop(100%, rgba(254,254,254,1)));
background: -webkit-linear-gradient(left, rgba(226,226,226,1) 0%, rgba(209,209,209,1) 1%, rgba(133,128,133,1) 51%, rgba(254,254,254,1) 100%);
background: -o-linear-gradient(left, rgba(226,226,226,1) 0%, rgba(209,209,209,1) 1%, rgba(133,128,133,1) 51%, rgba(254,254,254,1) 100%);
background: -ms-linear-gradient(left, rgba(226,226,226,1) 0%, rgba(209,209,209,1) 1%, rgba(133,128,133,1) 51%, rgba(254,254,254,1) 100%);
background: linear-gradient(to right, rgba(226,226,226,1) 0%, rgba(209,209,209,1) 1%, rgba(133,128,133,1) 51%, rgba(254,254,254,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2e2e2', endColorstr='#fefefe', GradientType=1 );;
color:white;
text-align: center;
 
}
#viewImagesList table tr:nth-child( even )
{
background-color: #A09EA2  ;
color:white;
text-align: center;
 
}


    </style>

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="panel panel-primary productFilterable table-responsive">
                <div class="panel-heading">
                    <h3 class="panel-title">Product List</h3>
                    <div class="pull-right" style="position: relative;
top: -20px;"><button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span>
                            Filter</button></div>
                </div>
                <table class="table table-responsive " style="font-size: 12px;">
                    <thead>
                        <tr class="filters">
                            <th><input type="text" class="form-control" placeholder="Id" disabled></th>
                            <th><input type="text" class="form-control" placeholder=" Product Name" disabled></th>
                            <th><input type="text" class="form-control" placeholder=" Product Price" disabled></th>
                            <th><input type="text" class="form-control" placeholder=" Product Discount" disabled></th>
                            <th><input type="text" class="form-control" placeholder="Description" disabled></th>
                               <th><input type="text" class="form-control" placeholder="Product Demo" disabled></th>

                            <th><input type="text" class="form-control" placeholder="Edit On Images" disabled></th>
                            
                         
                            
                            <th colspan="2" style="text-align: center;"><a class="btn btn-success"
                                    href="Product">Add
                                    Product</a></th>
                        </tr>
                    </thead>
                    <tbody>
                      
                        <tr>
                            <td id="productId">101</td>
                            <td id="productName">canvera</td>
                            <td id="productPrice"><i class="fa fa-inr">234</i></td>
                            <td id="productDiscount">20<i class="fa fa-percent"></i></td>
                            <td id="productDescription">what is this</td>
                            <td id="productDemoImage"><img src="images/icon.png" style="height: 100px;width: 100px;">
                                 <div class="file btn  btn-file edit-demo-image" style="overflow: hidden;position: relative;background-color: #09024B;color: white;display:none;">
                                Edit Image
                                 <input type="file" id="" name="" style="position: absolute;font-size: 50px;opacity: 0;      right: 0;top: 0;">
                                 </div>
                            </td>
                            <td><a type="button" href="" id="linkListOfImages"  data-toggle="modal" data-target="#viewImagesList" onclick="productId_of_viewImagesList(1)">View List Of Image</a></td>
                           
                           <td class=""> <a href="#" class="btn btn-success saveProduct " style="display: none;"
                                    onclick="saveProductFunction(1)">Save</a>
                                <button class="btn btn-warning editProduct">Edit</button></td>
                            <td><a class="btn btn-danger deleteProduct">Delete</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="modal" id="viewImagesList">
      <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="myModalLabel">Comapny Name</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th colspan="6">Sub Category List</th>
              </tr>
              <tr style="background-color: none;color:black;">
                <th >Id</th>
                <th >Name</th>
                <th >Description</th>
                <th >Photo</th>
                <th colspan="2"></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td id="">102</td>
                <td id="subCategoryName">John</td>
                <td id="subCategoryDescription">Doe</td>
                <td id="subCategoryImage"><img src="images/icon.png" style="height: 100px;width: 100px;">

  <div class="file btn  btn-file" style="overflow: hidden;position: relative;background-color: #09024B;color: white;">
                        Edit Image
                      <input type="file" id="" name="" style="position: absolute;font-size: 50px;opacity: 0;right: 0;top: 0;">
                    </div>

                </td>
                 <td class=""> <a href="#" class="btn btn-success saveSubCategory " style="display: none;"
                                    onclick="saveSubCategoryFunction(1)">Save</a>
                                <button class="btn btn-warning editSubCategory">Edit</button></td>
                            <td><a class="btn btn-danger deleteSubCategory">Delete</a></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>

        </div>
      </div>
    </div>
    </div>
    <script type="text/javascript" src="js/data-table.js"></script>

    <script type="text/javascript">


        // Delete Product
        $('.table tbody tr td').on('click', '.deleteProduct', function () {
            $(this).parent().parent().remove();
            event.preventDefault();
            const content = $(this).parent().prevAll().toArray();
            const data = {};
            content.forEach(item => {
                if (item.id === "productId") {
                    data["id"] = item.innerText;
                }
                if (item.id === "productName") {
                    data["name"] = item.innerText;
                }
            })

            console.log(JSON.stringify(data));
            var token = $("meta[name='_csrf']").attr("content");
            var header = $("meta[name='_csrf_header']").attr("content");

            var xhr = new XMLHttpRequest();
            var url = 'http://localhost:8080/api/product/post';
            xhr.open("POST", url, true);
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.setRequestHeader(header, token);

            xhr.onreadystatechange = function () { // Call a function when the state changes.
                if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                    // console.log(typeof (JSON.parse(this.response)));
                    console.log(JSON.parse(this.response)["name"]);
                }
            }
            xhr.send(JSON.stringify(data))

        })



        // Editable 
        $('.table tbody tr td').on('click', '.editProduct', function () {

            $(this).hide();
            $(this).siblings().show();
            $(this).parent().siblings("#productName").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#productDescription").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#productPrice").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#productDiscount").attr("contenteditable", "true").focus();
              $(this).parent().siblings("#productDemoImage").children(".edit-demo-image").show();
           

        });




        // Save Edits

        $('.table tbody tr td').on('click', '.saveProduct', function () {

            $(this).hide();
            $(this).siblings('.editProduct').show();
            $(this).parent().siblings("").attr("contenteditable", "false");
             $(this).parent().siblings("#productDemoImage").children(".edit-demo-image").hide();

        });



        // $('.table tbody tr td').on('click', '.deleteProduct', function () {

        //     $(this).closest('tr').remove();

        // });


        $('.table tbody tr td').on('click', '.u-icon', function () {

            $(this).hide();
            $(this).siblings().show();
            $(this).parent().parent().prevAll().children('td').attr("contenteditable", "true").focus().css({ "background-color": "#eeeeee", "width": "200px" });

        });

        //view Branch Address

        function addrLink(id) {
            $('#branchAddress #hidden_address_id').val(id);

            console.log("Address");
            // $.Post("url", { id: id }, function (data, status) {

            //     var addr = JSON.parse(data);
            //     $('#landmark').text("kundan").css("text-tranform", "capitalize");
            //     $('#street1').text("upper Kulti").css("text-tranform", "capitalize");
            //     $('#street2').text().css("text-tranform", "capitalize");
            //     $('#postoffice').text().css("text-tranform", "capitalize");
            //     $('#city').text().css("text-tranform", "capitalize");
            //     $('#pincode').text().css("text-tranform", "capitalize");
            //     $('#district').text().css("text-tranform", "capitalize");
            //     $('#state').text().css("text-tranform", "capitalize");

            // })
        }

   
  
        //show association details
        function productId_of_viewImagesList(id) {
            $('#adminDetails #hidden_admin_id').val(id);
            console.log("Admin");
            // var url = "";
            // $.Post("url", { id: id }, function (data, status) {

            //     $('#adminDetails #Name').text("kundan").css("text-tranform", "capitalize");
            //     $('#adminDetails #Branch').text("upper Kulti").css("text-tranform", "capitalize");
            //     $('#adminDetails #contact').text().css("text-tranform", "capitalize");
            //     $('#adminDetails #email').text().css("text-tranform", "capitalize");
            //     $('#adminDetails #salary').text().css("text-tranform", "capitalize");
            //     $('#adminDetails #jd').text().css("text-tranform", "capitalize");

            // });

        }

        //save Product
        function saveProductFunction(id) {
            var productId = id;
            var productName = $("table tbody tr td#productName").text();
            console.log(productName);

        }



    </script>

    <!--Edit Cover-->

    <script type="text/javascript">
          // Delete Association Product
        $('.table tbody tr td').on('click', '.deleteSubCategory', function () {
            $(this).parent().parent().remove();
            event.preventDefault();
            const content = $(this).parent().prevAll().toArray();
            const data = {};
            content.forEach(item => {
                if (item.id === "productId") {
                    data["id"] = item.innerText;
                }
                if (item.id === "productName") {
                    data["name"] = item.innerText;
                }
                if (item.id === "branchContact") {
                    data["phone"] = item.innerText;
                }
            })

            console.log(JSON.stringify(data));
            var token = $("meta[name='_csrf']").attr("content");
            var header = $("meta[name='_csrf_header']").attr("content");

            var xhr = new XMLHttpRequest();
            var url = 'http://localhost:8080/api/product/post';
            xhr.open("POST", url, true);
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.setRequestHeader(header, token);

            xhr.onreadystatechange = function () { // Call a function when the state changes.
                if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                    // console.log(typeof (JSON.parse(this.response)));
                    console.log(JSON.parse(this.response)["name"]);
                }
            }
            xhr.send(JSON.stringify(data))

        })

           // Edit Association Product 
        $('.table tbody tr td').on('click', '.editSubCategory', function () {

            $(this).hide();
            $(this).siblings().show();
            $(this).parent().siblings("#subCategoryName").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#subCategoryDescription").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#subCategoryImage").attr("contenteditable", "true").focus();
        });
        //save And Edit Display Button
            $('.table tbody tr td').on('click', '.saveSubCategory', function () {

            $(this).hide();
            $(this).siblings('.editSubCategory').show();
            $(this).parent().siblings("").attr("contenteditable", "false");

        });
    </script>
    <!--End Edit Cover-->

        <!--Edit Page-->

        <script type="text/javascript">
          // Delete Association Product
        $('.table tbody tr td').on('click', '.deletePage', function () {
            $(this).parent().parent().remove();
            event.preventDefault();
            const content = $(this).parent().prevAll().toArray();
            const data = {};
            content.forEach(item => {
                if (item.id === "productId") {
                    data["id"] = item.innerText;
                }
                if (item.id === "productName") {
                    data["name"] = item.innerText;
                }
                if (item.id === "branchContact") {
                    data["phone"] = item.innerText;
                }
            })

            console.log(JSON.stringify(data));
            var token = $("meta[name='_csrf']").attr("content");
            var header = $("meta[name='_csrf_header']").attr("content");

            var xhr = new XMLHttpRequest();
            var url = 'http://localhost:8080/api/product/post';
            xhr.open("POST", url, true);
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.setRequestHeader(header, token);

            xhr.onreadystatechange = function () { // Call a function when the state changes.
                if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                    // console.log(typeof (JSON.parse(this.response)));
                    console.log(JSON.parse(this.response)["name"]);
                }
            }
            xhr.send(JSON.stringify(data))

        })

           // Edit Association Product 
        $('.table tbody tr td').on('click', '.editPage', function () {

            $(this).hide();
            $(this).siblings().show();
            $(this).parent().siblings("#pageQuality").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#pageSize").attr("contenteditable", "true").focus();
            $(this).parent().siblings("#pagePrice").attr("contenteditable", "true").focus();
        });
        //save And Edit Display Button
            $('.table tbody tr td').on('click', '.savePage', function () {

            $(this).hide();
            $(this).siblings('.editPage').show();
            $(this).parent().siblings("").attr("contenteditable", "false");

        });
    </script>
    <!--End Edit Page-->

</body>

</html>