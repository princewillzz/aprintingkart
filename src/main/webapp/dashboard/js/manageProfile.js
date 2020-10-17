
  $(document).on('click','.apk-manage-profile .apk-profile-detail .cust-pro-detail .edit-icon',function(){

    $(this).hide();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .edit').hide();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .sv').show();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').attr('contenteditable','true').focus();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').css("background-color","white");

  });

  $(document).on('click','.apk-manage-profile .apk-profile-detail .cust-pro-detail .sv',function(){

    $(this).hide();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .edit').show();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .edit-icon').show();
    $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').attr('contenteditable','false');
     $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').attr('contenteditable','false');
    var a= $(this).siblings('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').text();
    alert(a);
    document.theForm.action="Login?id="+a;
       document.theForm.submit();
  
  
    
  

  });
  $(document).on('click','.apk-manage-profile .apk-profile-detail .cust-pro-detail .all-save .btn',function(){

    $('.apk-manage-profile .apk-profile-detail .cust-pro-detail .sv').hide();
    $('.apk-manage-profile .apk-profile-detail .cust-pro-detail .edit').show();
    $('.apk-manage-profile .apk-profile-detail .cust-pro-detail .edit-icon').show();
    $('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').attr('contenteditable','false');
     $('.apk-manage-profile .apk-profile-detail .cust-pro-detail .pro-data').css("background-color","#FEFDFC");

  });