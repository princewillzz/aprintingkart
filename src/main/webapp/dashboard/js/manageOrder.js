$(document).ready(function(){
     
      $(".content .product-manager .product-manager-heading ul li").on("click",".dispatch-btn",function(){

        $(this).css({ 
                "color": "white", 
               "background-color": "#09024B"
            }); 
            $(".recieved-btn").css({ 
                "color": "#09024B", 
               "background-color": "#E1E0D9"
            });
              $(".order-history-btn").css({ 
                "color": "#09024B", 
               "background-color": "#E1E0D9"
            });
           });   

          $(".content .product-manager .product-manager-heading ul li").on("click",".recieved-btn",function(){

        $(this).css({ 
                "color": "white", 
               "background-color": "#09024B"
            }); 
            $(".dispatch-btn").css({ 
                "color": "#09024B", 
               "background-color": "#E1E0D9"
            });
              $(".order-history-btn").css({ 
                "color": "#09024B", 
               "background-color": "#E1E0D9"
            });
          });   
                   $(".content .product-manager .product-manager-heading ul li").on("click",".order-history-btn",function(){

        $(this).css({ 
                "color": "white", 
               "background-color": "#09024B"
            }); 
            $(".dispatch-btn").css({ 
                "color": "#09024B", 
               "background-color": "#E1E0D9"
            });
              $(".recieved-btn").css({ 
                "color": "#09024B", 
               "background-color": "#E1E0D9"
            });
          });
    
    });