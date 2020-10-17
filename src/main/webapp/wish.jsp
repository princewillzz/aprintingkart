 <!DOCTYPE html>
 <html>
 <head>
 	<title>wish-html</title>
 	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="C:\Users\smd37\Desktop\fontawesome-free-5.14.0-web\css\all.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/wishstyle.css">
<link rel="stylesheet" type="text/css" href="css/menubar.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/banner.css">
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

            <h1 >&emsp;WhishList</h1>
        <ul class="contactlink">
          <li><a href="">Home</a></li>
           <li style="border: none;"><a href="">Wishlist</a></li>
        </ul>
         
       </div>
      </div>
   </div>
</div>











 
 <div class="container wishlist">
   <div class="row">
    <div class="col-12 col-xs-12 col-sm-12 col-lg-1 col-xl-1 col-md-1 ">
       
    </div>
    <div class="col-12 col-xs-12 col-sm-12 col-lg-10 col-xl-10 col-md-10 wish">
    <table class="table table-responsive-md table-responsive-sm" style="border: 1px solid #eeeeee" id="myTable">
  
        <tr>
          <th></th>
          <th>PRODUCT NAME</th>
          <th>UNIT PRICE</th>
          <th>STOCK STATUS</th>
          <th></th>
        </tr>
    
      <form>
        <tr>
          <td class="close_button"><input type="button" value="X" onclick="deleteRow(1,2,this)"></td>
          <td class="product_image_name"><img src="images/trend3.jpg" style=""><span class="pro_name_text">Motor</span></td>
          <td>20.00</td>
          <td class="instock">In stock</td>
          <td class="cart_button">
            <button class="btn btn-primary" onclick="deleteRow(2,2,this)"><span class="cart_icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span><span class="cart_text">add to cart</span></button></td>
        </tr>

          <tr>
          <td class="close_button"><input type="button" value="X" onclick="deleteRow(1,2,this)"></td>
          <td class="product_image_name"><img src="images/trend3.jpg" style=""><span class="pro_name_text">Motor1</span></td>
          <td>20.00</td>
          <td class="instock">Instock</td>
          <td class="cart_button"><button class="btn btn-primary" onclick="deleteRow(2,2,this)"><span class="cart_icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span><span class="cart_text">add to cart</span></button></td>
        </tr>
      </form>
     
     
  </table>
     </div>
    <div class="col-12 col-xs-12 col-sm-12 col-lg-10 col-xl-10 col-md-10 ">
       
     </div>
   </div>
 </div>
 


 <script type="text/javascript" src="js/menubar.js"></script>

<script type="text/javascript">
  


function deleteRow(j,id,r) {
  var i = r.parentNode.parentNode.rowIndex;
  var v=1;
 document.getElementById("myTable").deleteRow(i); 
     if (v==1)
   {

    document.theForm.action="Login?id="+id;
     
   } 
   if (v==2)
   {
     document.theForm.action="Register?id="+id;
   }
   document.theForm.submit();
   }

</script>
<script type="text/javascript">
  $('.banner').css("background-image","url('banner/banner.png')");

</script>
 </body>
 </html>