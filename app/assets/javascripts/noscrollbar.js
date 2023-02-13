$( document ).ready(function() {
var scroll = true;
  $("#box").click(function(){
    if (scroll){
      $('body').css('overflow' , 'hidden');
      scroll = false;
    }
    else{
      $('body').css('overflow' , 'visible');
      scroll = true;
    }
  });

});
