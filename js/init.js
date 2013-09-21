window.onload = function() {
  // Setting up buttons
  $('#auth_btn').onclick = auth;
  $('#today_btn').onclick = loadtoday;
  $('#week_btn').onclick = loadweek;
  $('#year_btn').onclick = loadyear;
  
  // Setting up date pickers
  $('#start-date').datepicker({
    pickTime: false,
    language: 'en'
  });

  $('#end-date').datepicker({
    pickTime: false,
    language: 'en'
  });

  // Set up form submission listener
  $('#create-task-btn').on('click', function(e){
    $('#create-task-form').submit();
  });

  console.log("Chief, finished initialization sequence.");
};