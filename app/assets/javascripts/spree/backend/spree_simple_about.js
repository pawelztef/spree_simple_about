// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'
$(document).ready(function() {
  var file_input = $('#me_profile_image');
  var label = $('label[for="me_profile_image"]');
  file_input.on('change', function(e) {
    e.preventDefault();
    label.html('<i class="glyphicon glyphicon-save"></i>' + file_input.val().split('\\').pop());
  });
});

