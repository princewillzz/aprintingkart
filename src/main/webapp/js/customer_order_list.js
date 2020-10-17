	$(document).ready(function(){
		var total=0;
var list=$(".item .total-price .amount");
	
		for(var index=0;index<list.length;index++)
	  		{
	  		total+=parseInt(list[index].innerHTML);
	  		}
	  			$('form .table tbody tr td .subtotal-amount').text(total);
	  			total=0;
	
	$('.like-btn').on('click', function() {
   $(this).toggleClass('is-active');

});
	  $(".delete-btn i").on('click',function(){

   	$(this).parent().parent().parent().remove();
   	var total=0;
var list=$(".item .total-price .amount");
	
		for(var index=0;index<list.length;index++)
	  		{
	  		total+=parseInt(list[index].innerHTML);
	  		}
	  			$('form .table tbody tr td .subtotal-amount').text(total);
	  			total=0;
   });


 $('.minus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value > 2) {
    			value = value - 1;
    			var a=$(this).parent().siblings(".total-price").children(".original-amount").text();
      				$(this).parent().siblings(".total-price").children(".amount").text(value*a);
    		} else {
    			value = 1;
    			var a=$(this).parent().siblings(".total-price").children(".original-amount").text();
      			$(this).parent().siblings(".total-price").children(".amount").text(value*a);
    		}

        $input.val(value);
        	for(var index=0;index<list.length;index++)
	  		{
	  		total+=parseInt(list[index].innerHTML);
	  		}
	  			$('form .table tbody tr td .subtotal-amount').text(total);
	  			total=0

    	});

    	$('.plus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value < 100) {
      		value = value + 1;
      		var a=$(this).parent().siblings(".total-price").children(".original-amount").text();
      		$(this).parent().siblings(".total-price").children(".amount").text(value*a);
      		
      	
    		} 
    		else {
    			value =100;
    		var a=$(this).parent().siblings(".total-price").children(".original-amount").text();
      		$(this).parent().siblings(".total-price").children(".amount").text(value*a);
    		}

    		$input.val(value);
    			for(var index=0;index<list.length;index++)
	  		{
	  		total+=parseInt(list[index].innerHTML);
	  		}
	  			$('form .table tbody tr td .subtotal-amount').text(total);
	  			total=0;
    	});

 
$(".goto-order-step ul li").on("click","a",function(){

      $(this).addClass("active").siblings().removeClass("active");



 });

    });	