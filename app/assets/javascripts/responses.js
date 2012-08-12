$(function() {
  $('#response_attending_0').change(function() {
    $('.is_attending').hide();
  });

  $('#response_attending_1').change(function() {
    $('.is_attending').show();
  });
});