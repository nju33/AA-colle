$(function(){
  var btn = $('#scroll-btn');
  $(document).scroll(function(){
    if($(this).scrollTop() > 200){
      btn.fadeIn();
    } else {
      btn.fadeOut();
    }
  });

  btn.on('click', function(){
    $('body:not(:animated)').animate({
      scrollTop: 0,
    }, 300);
    return false;
  }); 
});

