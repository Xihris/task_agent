$(document).ready(function() {

	$('.floppy').click(function(e) { 
		e.preventDefault();
		let groupId = $(this).data('idTempTask');

		$('#to_alert').append('<p>' + groupId + '</p>')
	});

});