
 var someValue = $("#new").text();
 var percentage=$("#perc").text();


if (someValue!=null)
{

    $('#new').text(someValue);
     

}
else
{
$('#new').hide();
}

if (percentage!=null)
{
    $('#perc').text(percentage);
  
}
else
{
$('#perc').hide();
}

$('.banner').css("background-image","url('banner/img-61.png')");

$('.banner1').css("background-image","url('banner/img-61.png')");
$('.banner2').css("background-image","url('banner/trending1.jpg')");