// Temporary placement till compile from other js files is fixed
// Triggers the read-more modal window for projects
$(document).on('page:change', function() {
  $('.modal-trigger').leanModal();
});
