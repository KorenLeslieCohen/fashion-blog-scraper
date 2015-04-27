$(document).ready(function(){

  $('#outer-modal').css("display", "none");

  $('#icon-one').click(function(){
    $('#outer-modal').css("display", "block").fadeIn(500);
  });

  $('#outer-modal').click(function(){
    $(this).css("display", "none").fadeOut(500);
  });

})