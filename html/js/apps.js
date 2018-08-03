App = {
    scrollfixed: function () {
        if (jQuery('#header_site.fixed-top').length) {
            jQuery(window).scroll(function () {
                var sticky = jQuery('#header_site.fixed-top'),
                    scroll = jQuery(window).scrollTop();
                if (scroll >= 100) {
                    sticky.addClass('fixed');
                }
                else if (scroll == 0) {
                    sticky.removeClass('fixed');

                }
            });
        }
    },
    slider: function(){
          jQuery(".primaryslider").owlCarousel({
          items: 1,
          loop:true,
          autoplay: false,
          autoplayTimeout: 3000,
          dots: true
          });
      },

    scrolltop: function () {
        jQuery(window).scroll(function () {
            if (jQuery(this).scrollTop() > 500)
                jQuery('#goTop').show('slide');
            else
                jQuery('#goTop').hide('slide');
        });
        jQuery('#goTop').click(function () {
            jQuery('body,html').animate({scrollTop: 0}, 1500);
        });
    },

};
jQuery(document).ready(function(){
    App.scrollfixed();
    var mySVG = jQuery('.meta_info svg').drawsvg();
    function animate() {
        mySVG.drawsvg('animate');
    }
    animate();
    jQuery('.meta_info').mouseover(function () {
        animate();
    });
    App.slider();
    App.scrolltop();
    AOS.init({
        duration: 600,
        easing: 'ease-in-sine',
        delay: 200,
        disable: function () {
            var maxWidth = 768;
            return window.innerWidth < maxWidth;
        }});
})