$(document).ready(function() {
	$('.task').click(function() {
		$('.add_task').toggle();
	});
	
	$('.author').click(function() {
		$('.author-tab').toggle();
	});


	$('.datepicker').datepicker({"format": "dd-mm-yyyy", "autoclose": true});


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