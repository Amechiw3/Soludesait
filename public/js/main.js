$(document).ready(function() {

    /*$(window).on('scroll load', function() {

        if ($(window).scrollTop() > 0 ) {
            $('#header').addClass('header-scrolled');
        }
        else {
            $('#header').removeClass('header-scrolled');
        }
    });*/

    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox();
    });
});