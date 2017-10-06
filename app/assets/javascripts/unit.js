$(document).ready(function() {
	$('a.pencil').click(function(e) {
		e.preventDefault();
		var unit_id;

		unit_id = $(this).data('unitId');
		$('#edit_unit_' + unit_id).show();
		$('#unit_' + unit_id).hide();

		$('a.remove').click(function() {	
			document.location.href = "/";
		});
	});

	$('#save_dep').click(function() {
		let department = [];

		department = $('#department_full_department')[0].value.split(" "); // Департамент
		// department = department.split(" ");
		let simbols = [];
		for (i = 0; i < department.length; i++ ) {
			let simbol = department[i].charAt(0).toUpperCase();
			simbols.push(simbol);
		};
		simbols = simbols.join('');

		let count = $('#form_for_reload')[0].childElementCount + 1;
 	    $('#form_for_reload').append("<option value=" + count + ">" + simbols + "</option>");
 	   	
	});
});



