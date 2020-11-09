<!DOCTYPE html>
<html>

<head>
  <title>Cart</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
  <link rel="stylesheet" type="text/css" href="/css/cart.css">

  <style type="text/css">
    * {
      box-sizing: border-box;
    }

    html,
    body {


      margin: 0;
      background-color: #7EC855;
      font-family: 'Roboto', sans-serif;
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="row" style="margin-top: 40px;">
      <div class="col-12 col-sm-12 col-sx-12 col-md-12 col-xl-12 col-lg-12 goto-order-step">
        <ul>
          <li><a href="" style="color: rgba(0,0,0,.5);">Shopping Cart</a></li>
          <li><a href="">Check Detail</a></li>
          <li>Order Complete</li>
        </ul>
      </div>
    </div>
    <div class="row" style="margin-top: 40px;background: white;">

      <div class="col-12 col-sm-12 col-sx-12 col-md-8 col-xl-8 col-lg-8">

        <div class="shopping-cart">
          <!-- Title -->
          <div class="title">
            Shopping Bag
          </div>

          <!-- Product #1 -->
          <div class="item">
            <div class="buttons">
              <span class="delete-btn"><i class="fa fa-close"></i></span>
              <span class="like-btn"></span>
            </div>

            <div class="image">
              <img src="https://designmodo.com/demo/shopping-cart/item-1.png" alt="" />
            </div>

            <div class="description">
              <span>Common Projects</span>
              <span>Bball High</span>
              <span>White</span>
            </div>

            <div class="quantity">
              <button class="plus-btn" type="button" name="button">
                <img src="https://designmodo.com/demo/shopping-cart/plus.svg" alt="" />
              </button>
              <input type="text" name="name" value="1">
              <button class="minus-btn" type="button" name="button">
                <img src="https://designmodo.com/demo/shopping-cart/minus.svg" alt="" />
              </button>
            </div>

            <div class="total-price"><i class="fa fa-inr" aria-hidden="true"></i><span class="original-amount"
                style="display: none">123</span><span class="amount">123</span>
            </div>
          </div>

          <!-- Product #2 -->
          <div class="item">
            <div class="buttons">
              <span class="delete-btn"><i class="fa fa-close"></i></span>
              <span class="like-btn"></span>
            </div>

            <div class="image">
              <img src="https://designmodo.com/demo/shopping-cart/item-2.png" alt="" />
            </div>

            <div class="description">
              <span>Maison Margiela</span>
              <span>Future Sneakers</span>
              <span>White</span>
            </div>

            <div class="quantity">
              <button class="plus-btn" type="button" name="button">
                <img src="https://designmodo.com/demo/shopping-cart/plus.svg" alt="" />
              </button>
              <input type="text" name="name" value="1">
              <button class="minus-btn" type="button" name="button">
                <img src="https://designmodo.com/demo/shopping-cart/minus.svg" alt="" />
              </button>
            </div>

            <div class="total-price"><i class="fa fa-inr" aria-hidden="true"></i><span class="original-amount"
                style="display: none">123</span><span class="amount">123</span>
            </div>


          </div>

          <!-- Product #3 -->
          <div class="item">
            <div class="buttons">
              <span class="delete-btn"><i class="fa fa-close"></i></span>
              <span class="like-btn"></span>
            </div>

            <div class="image">
              <img src="https://designmodo.com/demo/shopping-cart/item-3.png" alt="" />
            </div>

            <div class="description">
              <span>Our Legacy</span>
              <span>Brushed Scarf</span>
              <span>Brown</span>
            </div>

            <div class="quantity">
              <button class="plus-btn" type="button" name="button">
                <img src="https://designmodo.com/demo/shopping-cart/plus.svg" alt="" />
              </button>
              <input type="text" name="name" value="1">
              <button class="minus-btn" type="button" name="button">
                <img src="https://designmodo.com/demo/shopping-cart/minus.svg" alt="" />
              </button>
            </div>

            <div class="total-price"><i class="fa fa-inr" aria-hidden="true"></i><span class="original-amount"
                style="display: none">123</span><span class="amount">123</span></div>
          </div>

        </div>
      </div>
      <div class="col-12 col-sm-12 col-sx-12 col-md-4 col-xl-4 col-lg-4 ">
        <form>
          <table class="table table-responsive-md">
            <thead>
              <tr>
                <th colspan="2">Cart Total</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="text-align: left;">Subtotal</td>
                <td style="text-align: right;"><i class="fa fa-inr"></i><span class="subtotal-amount"></span></td>
              </tr>
              <tr>
                <td style="text-align: left;">Shipping</td>
                <td style="text-align: right;"><i class="fa fa-inr"></i><span class="shipping-charge"></span><br>
                  <p style="font-size: 11px;">Shipping options will be updated during checkout</p>
                </td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td style="text-align: left;">Total</td>
                <td style="text-align: right;"><i class="fa fa-inr"></i><span class="total-amount"></span></td>
              </tr>
              <tr>
                <td colspan="2"><button type="submit" class="btn bg-primary proceed-to-checkout "
                    style="width: 100%;">Proceed To Checkout</button></td>
              </tr>
            </tfoot>

          </table>
        </form>

      </div>

    </div>
    <div class="row" style="margin-top: 10px;">
      <div class="col-12">
        <a href="" class="btn btn-outline-info "><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Continue
          Shopping</a>
      </div>
    </div>
    <div class="row" style="margin-top: 20px;">
      <div class="col-12" style="text-align: center;">
        <h3>Any Queries</h3>
      </div>
      <div class="col-12 col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6 Queries">
        <p><i class="fa fa-headphones" aria-hidden="true"></i></p>
        <p>Call Us at 011 – 40844758 (Mon – Sun: 10AM – 8PM)</p>
      </div>
      <div class="col-12 col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6 Queries" style="border-right: none;">
        <p><i class="fa fa-commenting" aria-hidden="true"></i></p>
        <p>Chat With Us (Mon – Sun: 10AM – 8PM)</p>
      </div>
    </div>
  </div>

  <script type="text/javascript" src="/js/cart.js">

  </script>
</body>

</html>