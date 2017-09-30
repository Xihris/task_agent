$(document).ready(function() {

    // $("#department_full_department").change(function () {
    //     alert($(this).val());
    // });




	function get_name_browser() {
	    // получаем данные userAgent
	    var ua = navigator.userAgent;    
	    // с помощью регулярок проверяем наличие текста,
	    // соответствующие тому или иному браузеру
	    if (ua.search(/Chrome/) != -1) return 'Google Chrome';
	    if (ua.search(/Firefox/) != -1) return 'Firefox';
	    if (ua.search(/Safari/) != -1) return 'Safari';
	    if (ua.search(/MSIE/) != -1) return 'Internet Explorer';

	    return 'Не определен';
	}
 
	var browser = get_name_browser();

	if (browser == 'Google Chrome' ) {
		$('.home_btn').click(function() {
			document.location.href = "/";
		});
	} else if ( browser == 'Firefox' ) {
		$('.home_btn').click(function() {
			document.location.replace('/');
		});
	} else if ( browser == 'Safari' ) {
		$('.home_btn').click(function() {
			document.location.replace('/');
		});
		// to do : ie проверить как действует
	} else if ( browser == 'Internet Explorer' ) {
		$('.home_btn').click(function() {
			document.location.replace('/');
		});
	};


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



// <%= button_to_function "✓", '$(this).toggleClass("buttonGrey buttonGreen");', :class => "buttonGrey" %>

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