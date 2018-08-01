App = {
    slider: function(){
          jQuery(".primaryslider").owlCarousel({
          items: 1,
          loop:true,
          autoplay: false,
          autoplayTimeout: 3000,
          dots: true
          });
      },
    discountslider: function(){
          jQuery(".slider-partner").owlCarousel({
          items: 5,
          loop:true,
          autoplay: true,
          autoplayTimeout: 5000,
          margin: 30,
          dots: false,
          nav: false,
           responsive:{
            0:{
                items:1
            },
            768:{
                items:3,
            },
            1024:{
              items: 5
            }
            }
          });
      },
    postslider: function(){
          jQuery(".slide-post").owlCarousel({
          items: 3,
          loop:true,
          autoplay: true,
          autoplayTimeout: 5000,
          dots: false,
          margin: 30,
           responsive:{
            0:{
                items:1
            },
            768:{
                items:3,
                nav: true,
                navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
            },
            }
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
    formatNumber: function(nStr, decSeperate, groupSeperate) {
            nStr += '';
            x = nStr.split(decSeperate);
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
            }
            return x1 + x2;
        },
    onlynumber: function(evt){
        jQuery(".onlynumber").keydown(function (e) {
            if (jQuery.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
// Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
// Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
// let it happen, don't do anything
                return;
            }
// Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
        });
    },
};
jQuery(document).ready(function(){
    App.slider();
    App.discountslider();
    App.postslider();
    App.onlynumber();
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