$(document).ready(function() {

// 'Add a photo button' fires the input file type button
// Added the unbind then bind because it was originally firing twice

  $('#newBtn').unbind('click').bind('click', function(event) {
    $('#html_btn').click();
  });
});
