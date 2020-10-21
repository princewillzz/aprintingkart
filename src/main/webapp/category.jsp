<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>

<head>
  <title>Sub Category</title>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href='https://fonts.googleapis.com/css?family=Ranga' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <link rel="stylesheet" type="text/css" href="css/menubar.css">
  <link rel="stylesheet" type="text/css" href="css/home_card.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
  <link rel="stylesheet" type="text/css" href="css/footer.css">
  <link rel="stylesheet" type="text/css" href="css/category.css">


  <style type="text/css">
    @media (min-width: 1200px)and (max-width:3199px) {


      #menubar {
        display: none;
      }
    }

    /* Medium screen : 992px. */

    @media only screen and (min-width: 992px) and (max-width: 1199px) {


      #menubar {
        display: none;
      }

    }

    /* Tablet :768px. */

    @media only screen and (min-width: 800px) and (max-width: 991px) {

      #menubar {
        display: block;
      }
    }


    /* Large Mobile :480px. */

    @media only screen and (min-width: 767px) and (max-width: 799px) {

      #menubar {
        display: block;
      }

    }

    /* Medium Mobile :480px. */

    @media only screen and (min-width: 576px) and (max-width: 766px) {

      #menubar {
        display: block;
      }

    }

    /* Small Mobile :320px. */

    @media only screen and (min-width: 479px) and (max-width: 576px) {



      #menubar {
        display: block;
      }

    }

    @media only screen and (max-width: 478px) {

      #menubar {
        display: block;
      }

    }
  </style>
</head>

<body>


  <section id="menubar">

    <div class="container-fluid">
      <div class="row">
        <div class="col-12" style="background-color: seagreen;height: 40px;">
          <a href="" class="text-white" style="text-decoration: none;"><i class="fa fa-list-ul"
              style="line-height: 40px;margin-right: 15px;"></i>Category List</a>
        </div>

      </div>
    </div>
  </section>


  <div class="container">
    <div class="row">

      <div class="col-12 col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-3">

        <!-- Contenedor -->
        <div class="col-9 col-xs-9 col-sm-9 col-md-12 col-lg-12 col-xl-12 category-division" style="">


          <ul id="accordion" class="accordion" style="">
            <li>
              <div class="link bg-primary text-white" style="padding: 15px 0px 15px 50px;">SHOP BY CATEGORY</div>
            </li>
            <!-- <li>
              <div class="link">T-Shirt<i class="fa fa-chevron-down"></i></div>
              <ul class="submenu">
                <li><a href="#">Photoshop</a></li>
                <li><a href="#">HTML</a></li>
                <li><a href="#">CSS</a></li>
              </ul>
            </li> -->

            <c:forEach items="${categoriesWithSubCategories}" var="categoryWithSubCategories">
              <li>
                <div class="link"><i class="fa fa-coffee"></i>${categoryWithSubCategories.category.name}<i
                    class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                  <c:forEach items="${categoryWithSubCategories.subCategories}" var="subCategory">
                    <li><a href="#">${subCategory.category.name}</a></li>
                  </c:forEach>

                </ul>
              </li>
            </c:forEach>




          </ul>
        </div>
      </div>

      <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-9 col-xl-9">
        <div class="container-fluid">

          <div class="row">

            <c:if test="${subCategories.size() > 0}">
              <!-- Sub Categories list -->
              <c:forEach items="${subCategories}" var="subCategory">

                <div class="col-12 col-sm-12 col-xs-12 col-md-4 col-lg-4 col-xl-4">
                  <a href="sub-category?parentid=${subCategory.id}">
                    <div class="cards">
                      <div class="card__item">
                        <div class="card__header">
                          <img src="images/trend3.jpg" style="height: 200px; width: 220px;object-fit: contain;">
                          <span id="new">new</span>
                          <span id="perc">10%</span>

                        </div>
                        <div class="card__content">
                          <h5 class="card__content-text" style="">${subCategory.name}</h5>
                        </div>
                        <div class="card__footer">
                        </div>
                      </div>
                    </div>
                  </a>
                </div>

              </c:forEach>
            </c:if>

            <c:if test="${subCategories.size() <= 0}">
              <!-- Prodcts List -->
              <c:forEach items="${products}" var="product">
                <div class="col-12 col-sm-12 col-xs-12 col-md-4 col-lg-4 col-xl-4">
                  <a href="product-detail?id=${product.id}">
                    <div class="cards">
                      <div class="card__item">
                        <div class="card__header">
                          <img src="images/trend3.jpg" style="height: 200px; width: 220px;object-fit: contain;">
                          <span id="new">new</span>
                          <span id="perc">10%</span>

                        </div>
                        <div class="card__content">
                          <h5 class="card__content-text" style="">${product.name}</h5>
                        </div>
                        <div class="card__footer">
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </c:forEach>
            </c:if>

          </div>

        </div>
      </div>


    </div>
  </div>











  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <!-- Latest compiled and minified JavaScript -->
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>

  <script type="text/javascript" src="js/menubar.js"></script>

  <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
  <script type="text/javascript" src="js/home_card.js"></script>

  <script type="text/javascript">
    $(function () {
      var Accordion = function (el, multiple) {
        this.el = el || {};
        this.multiple = multiple || false;

        // Variables privadas
        var links = this.el.find('.link');
        // Evento
        links.on('click', { el: this.el, multiple: this.multiple }, this.dropdown)
      }

      Accordion.prototype.dropdown = function (e) {
        var $el = e.data.el;
        $this = $(this),
          $next = $this.next();

        $next.slideToggle();
        $this.parent().toggleClass('open');

        if (!e.data.multiple) {
          $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
        };
      }

      var accordion = new Accordion($('#accordion'), false);


    });


  </script>

  <script type="text/javascript">

    // window.addEventListener("load", (e) => {
    //   $(".accordion li .submenu").each(function () {
    //     if ($(this).children().length == 0) { // If this nested class has no children
    //       $(this).hide(); // This will hide it, but not alter the layout
    //       // $(this).css("display", "none"); // This will alter the layout
    //     } else {
    //       $(this).show();
    //       //$(this).css("display", "none"); // This will alter the layout
    //     }
    //   });
    // })

  </script>

  <script type="text/javascript">

    $(document).ready(function () {

      $(window).resize(function () {

        if ($(window).width() <= 991) {

          $(".category-division .accordion").slideUp();

        }
        else {

          $(".category-division .accordion").slideDown();
        }

      });
      $("#menubar .fa-list-ul").click(function () {

        $(".category-division .accordion").slideToggle();
        return false;

      });

    });

  </script>
</body>

</html>