$('.flexslider').flexslider({
    animation: 'slide',
    controlNav: true,
    animationLoop: true,
    slideshow: true,
    itemWidth: 100,
    itemMargin: 5

});

$('.flexslider ul li img').click(function () {
    var index = $(this).data('target');
    $('.infoproducto figure.visor img').hide();
    $('#lupa'+index).show();
});

$('.infoproducto figure.visor img').mouseover(function () {
   var path = $(this).attr('src');
   $('.lupa img').attr('src', path);
   $('.lupa').fadeIn();
   $('.lupa').css({
       'height': $('.visorImg').height() + 'px',
       'background': 'transparent',
       'width': '100%'
   });
});

$('.infoproducto figure.visor img').mouseout(function () {
    $('.lupa').fadeOut();
});

$('.infoproducto figure.visor img').mousemove(function (event) {
    var posX = event.offsetX;
    var posY = event.offsetY;

    $('.lupa img').css({
        'margin-left':  -posX+'px',
        'margin-top':   -posY+'px',
        'background':   'transparent'
    });

});