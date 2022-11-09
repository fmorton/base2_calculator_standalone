// $(document).ready(function() {
// 	$('.checklist').multiselect({
// 		buttonClass: 'btn btn-primary',
// 		buttonWidth: 'auto',
// 		maxHeight: false,
// 		buttonText: function(options) {
// 			if (options.length == 0) {
// 				return 'None selected <b class="caret"></b>';
// 			}
// 			else if (options.length > 3) {
// 				return options.length + ' Locations <b class="caret"></b>';
// 			}
// 			else {
// 				var selected = '';
// 				options.each(function() {
// 					selected += $(this).text() + ', ';
// 				});
// 				return selected.substr(0, selected.length -2) + ' <b class="caret"></b>';
// 			}
// 		}
// 	});
// });

// $(document).ready(function() {
//   $("#location_labels").dropdownchecklist( { textFormatFunction: function(options) {
//     var selectedOptions = options.filter(":selected");
//     var countOfSelected = selectedOptions.size();
//     switch(countOfSelected) {
//       case 0: return "<i>Locations<i>";
//       case 1: return selectedOptions.text();
//       case options.size(): return "All Locations";
//       default: return countOfSelected + " Locations";
//     }
//   } });
// });

// $(document).ready(function() {
//   $("#segments").dropdownchecklist( {  width: 100, textFormatFunction: function(options) {
//     var selectedOptions = options.filter(":selected");
//     var countOfSelected = selectedOptions.size();
//     switch(countOfSelected) {
//       case 0: return "<i>Segments<i>";
//       case 1: return selectedOptions.text();
//       case options.size(): return "All Segments";
//       default: return countOfSelected + " Segments";
//     }
//   } });
// });


// $(document).ready(function() {
// 	$("#leads_dates").dropdownchecklist();
// });

