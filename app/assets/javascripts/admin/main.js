$(document).ready(function() {
  $('.select2').select2({});

  $('.datepicker').bootstrapMaterialDatePicker({
    format: 'MMMM DD YYYY',
    weekStart : 0,
    time: false
  });
});