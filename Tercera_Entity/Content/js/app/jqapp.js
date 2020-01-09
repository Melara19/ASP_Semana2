$(document).ready(function () {
    $(".uppercase").blur(function () {
        var text = $(this).val();
        $(this).val(text.toUpperCase());
    });
    $(".lowercase").blur(function () {
        var text = $(this).val();
        $(this).val(text.toLowerCase());
    });
});