$(window).on('load', function() {
  /*------------------
    Preloder
  --------------------*/
  $(".loader").fadeOut();
  $("#preloder").delay(400).fadeOut("slow");

});
  $(document).ready(function(){
    var c=1;
  $('.slicknav_btn ').click(function(){
      c++;
      
      
if(c%2==0)
{
    $(".icon-bar2").css("display","none");
    $(".icon-bar3").css("transform"," rotate(35deg)");
    
    $(".icon-bar3").css("transition","all .3s linear");
    $(".icon-bar1").css("transform"," rotate(-35deg)");

    $(".icon-bar1").css("transform-origin","right");
    $(".icon-bar1").css("transition","all .3s linear");
    
    $(".header-top").css("display","none");
  
} 
if(c%2==1)
{
    $(".icon-bar2").css("display","block");
    $(".icon-bar3").css("transform"," rotate(0deg)");
    
    $(".icon-bar3").css("transition","all .3s linear");
    $(".icon-bar1").css("transform"," rotate(0deg)");

    $(".icon-bar1").css("transform-origin","right");
    $(".icon-bar1").css("transition","all .3s linear");
    $(".header-top").css("display","block");
  
} 


        $('.slicknav_nav').slideToggle();
        $('.sub-menu2').slideUp();
       $('.sub-menu3').slideUp();
       $('.sub-menu4').slideUp();
       $('.sub-menu5').slideUp();
       $('.sub-menu6').slideUp();
        $('.sub-menu1').slideUp();
      });
  $('.slicknav_parent1').click(function(){
       $('.sub-menu1').slideToggle();
        $('.sub-menu2').slideUp();
       $('.sub-menu3').slideUp();
       $('.sub-menu4').slideUp();
       $('.sub-menu5').slideUp();
       $('.sub-menu6').slideUp();
      });

  $('.slicknav_parent2').click(function(){
       $('.sub-menu2').slideToggle();
       $('.sub-menu1').slideUp();
       $('.sub-menu3').slideUp();
       $('.sub-menu4').slideUp();
       $('.sub-menu5').slideUp();
       $('.sub-menu6').slideUp();
      });

  $('.slicknav_parent3').click(function(){
       $('.sub-menu3').slideToggle();
        $('.sub-menu2').slideUp();
       $('.sub-menu1').slideUp();
       $('.sub-menu4').slideUp();
       $('.sub-menu5').slideUp();
       $('.sub-menu6').slideUp();
      });

  $('.slicknav_parent4').click(function(){
       $('.sub-menu4').slideToggle();
        $('.sub-menu2').slideUp();
       $('.sub-menu3').slideUp();
       $('.sub-menu1').slideUp();
       $('.sub-menu5').slideUp();
       $('.sub-menu6').slideUp();
      });

  $('.slicknav_parent5').click(function(){
       $('.sub-menu5').slideToggle();
        $('.sub-menu2').slideUp();
       $('.sub-menu3').slideUp();
       $('.sub-menu4').slideUp();
       $('.sub-menu1').slideUp();
       $('.sub-menu6').slideUp();
      });

  $('.slicknav_parent6').click(function(){
       $('.sub-menu6').slideToggle();
        $('.sub-menu2').slideUp();
       $('.sub-menu3').slideUp();
       $('.sub-menu4').slideUp();
       $('.sub-menu5').slideUp();
       $('.sub-menu1').slideUp();
      });

        });