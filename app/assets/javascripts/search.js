$(document).ready(function() {
	
	$('.home_btn').click(function() {
		document.location.replace("/");
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

	$('.datepicker').datepicker({"format": "dd.mm.yyyy", "autoclose": true});
	// let table = $('.table');
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
	
	function names() {
		let numnum = Math.round($('.left-names')[0].offsetWidth / 6);		
		$.map( $('.btn-zenit'), function(i) { i.style.width = numnum + "px" });
	}
	names();

});