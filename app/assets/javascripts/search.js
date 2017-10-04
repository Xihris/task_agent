$(document).ready(function() {

	$(document).on("click", "#home_btn", function(){
   		document.location.href = "/";
	});

	$('.task').click(function() {
		$('.add_task').toggle();
		if ($('.add_task')["0"].style.display == "none") {
			$('.author-tab').hide();
			$('.add_departament').hide();
		}
	});
	
	$('.author').click(function() {
		$('.author-tab').toggle();
	});

	$('.color_btn').click(function() {
		$('.add_departament').toggle();
	});

	$('.datepicker').datepicker({
		"format": "dd.mm.yyyy",
		"autoclose": true, 
		language: 'ru',
	});



// <%= button_to_function "✓", '$(this).toggleClass("buttonGrey buttonGreen");', :class => "buttonGrey" %>
// $( "td" ).toggle(
//   function() {
//     $( this ).addClass( "selected" );
//   }, function() {
//     $( this ).removeClass( "selected" );
//   }
// );
	table.onmouseover = function(event) {
		let row = event.target.parentElement;
		if(row.localName == 'tr'){
			var className = row.className;
			row.className = "info";
		}
		
		table.onmouseout = function(event) {
			row = event.target.parentElement;
			if(row.localName == 'tr') {
				row.className = className;
			}
		}
	};
	
	// function names() {
	// 	let numnum = Math.round($('.left-names')[0].offsetWidth / 6);		
	// 	$.map( $('.btn-zenit'), function(i) { i.style.width = numnum + "px" });
	// }
	// names();

});