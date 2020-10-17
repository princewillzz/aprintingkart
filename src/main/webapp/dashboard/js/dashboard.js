 $(document).ready(function(){
      $('.nav_btn').click(function(){
        $('.mobile_nav_items').toggleClass('active');
      });
$(document).on("click",".sidebar a",function(){

      $(this).addClass("active").siblings().removeClass("active");
  });


 });
