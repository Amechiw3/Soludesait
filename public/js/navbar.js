$(document).ready(function() {

    $(window).on('scroll load', function() {

        if ($(window).scrollTop() > 0 ) {
            $('#header').addClass('fixed-top');
            $('#navbar').addClass('navbar-dark');
            $('#navbar').addClass('bg-dark');
        }
        else {
            $('#header').removeClass('fixed-top');
            $('#navbar').removeClass('navbar-dark');
            $('#navbar').removeClass('bg-dark');

        }
    });
});