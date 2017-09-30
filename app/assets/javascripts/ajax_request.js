    $.ajax({
        url: 'get_all_proposes/get_all_marks',
        type: 'get',
        dataType: 'json',

        success: function (data) {
            var select = $('#mark');

            $.each(data, function (index, value) {
                var optionMark = $('<option>');
                optionMark.val(value).text(value).appendTo(select);
            });
        }
    });