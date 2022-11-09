$(document).ready(function(){
  $('.economics_popover').popover({ 
    html : true,
    trigger : 'hover',
    content: function() {
	  data_id = $(this).attr('data-id');
      return $("#" + data_id).html();
    }
  });
});


