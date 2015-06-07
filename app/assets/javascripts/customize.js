$(document).ready(function(){
  $('[name="mamum[group]"]').change(function(){
    $.ajax({
      url: $(this).data('url') + '?group=' + $(this).val(),
      type: "GET"
    }).done(function(data){
      $('.get-murrobis').html(data);
    })
  })
})
  