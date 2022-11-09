function check_all(form_id, form_element_name) {
  var form = document.getElementById(form_id);
  for (var i =0; i < form.elements.length; i++) {
    element = form.elements[i];
    element_name = element.name;
    if(element_name == form_element_name) {
      element.checked = true;
	}
  }
}

// $(document).ready(function() {
// 	$('.checklist').multiselect({
// 		buttonClass: 'btn',
// 		buttonWidth: 'auto',
// 		maxHeight: false,
// 		buttonText: function(options) {
// 			if (options.length == 0) {
// 				return 'All <b class="caret"></b>';
// 			}
// 			else if (options.length > 3) {
// 				return options.length + ' Items <b class="caret"></b>';
// 			}
// 			else {
// 				var selected = '';
// 				options.each(function() {
// 					selected += $(this).text() + ', ';
// 				});
// 				return selected.substr(0, selected.length - 2) + ' <b class="caret"></b>';
// 			}
// 		}
// 	});
// });

