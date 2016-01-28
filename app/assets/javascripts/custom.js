$(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });
});

$(function () {
    $('#due_date_picker').datetimepicker();
});

