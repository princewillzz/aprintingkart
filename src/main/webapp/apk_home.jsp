<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

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

  <link href="images/favicon.ico" rel="shortcut icon" />

  <title>Responsive Animated Navbar</title>

  <style type="text/css">


  </style>
</head>

<body>

  <%@include file="header.jsp" %>


  <div class="container-fluid">
    <div class="row">
      <div class="col-12 banner"></div>

    </div>
  </div>



  <div class="container">
    <div class="row">
      <!--loop-->


      <c:forEach items="${categoriesWithSubCategories}" var="categoryWithSubCategories">



        <div class="col-12 col-md-3 col-lg-3 col-xl-3 ">
          <a href="sub-category?parentid=${categoryWithSubCategories.category.id}">
            <div class="cards">
              <div class="card__item">
                <div class="card__header">
                  <img src="https://www.w3schools.com/images/w3schools_green.jpg"
                    style="height: 200px; width: 220px;object-fit: contain;">

                  <span id="new">hot</span>
                  <span id="perc">10%</span>

                </div>
                <div class="card__content">
                  <h5 class="card__content-text" style="">${categoryWithSubCategories.category.name}</h5>
                </div>
                <div class="card__footer">
                </div>
              </div>
            </div>
          </a>
        </div>

      </c:forEach>


      <!--end loop-->

    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-12 col-md-6 col-lg-6 col-xl-6 banner1">
        <div class="banner-caption"
          style="height: 100%;width: 100%;background-color: rgba(0,0,0,.2);position: absolute;">
          <a href="">Some<br>
            Offers</a>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-6 col-xl-6 banner2">

      </div>
    </div>
  </div>






  <%@include file="footer.jsp" %>



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <!-- Latest compiled and minified JavaScript -->
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
  <script type="text/javascript" src="js/menubar.js"></script>
  <script type="text/javascript" src="js/home_card.js"></script>




</body>

</html>