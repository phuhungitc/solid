Apps = {
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
          nav: true,
          navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
          autoplay : true,
          animateOut: 'slideOutLeft',
          animateIn: 'fadeInRight',
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
    drawsvgfunc: function () {
        if(jQuery('.primaryslider .item_banner .meta_info').length){
            jQuery('.primaryslider .item_banner .meta_info').each(function(){
                var mySVG = jQuery(this).find('svg').drawsvg();
                function animate() {
                    mySVG.drawsvg('animate');
                }
                animate();
                jQuery(this).mouseover(function () {
                    animate();
                });
            })
        }

    },
    mapcontact: function () {
        if(jQuery('#map').length){
            var map;
            var uluru = {lat: 10.787389, lng: 106.678429};
            map = new google.maps.Map(document.getElementById('map'), {
                center: uluru,
                zoom: 15
            });
            var contentString = "Test";
            var infowindow = new google.maps.InfoWindow({
                content: contentString
            });

            var marker = new google.maps.Marker({position: uluru, map: map,title: 'Title'});
            marker.addListener('click', function() {
                infowindow.open(map, marker);
            });


        }
    }

};
jQuery(document).ready(function(){
    Apps.scrollfixed();
    Apps.drawsvgfunc();
    Apps.slider();
    Apps.scrolltop();
    Apps.mapcontact();
    AOS.init({
        duration: 600,
        easing: 'ease-in-sine',
        delay: 200,
        disable: function () {
            var maxWidth = 768;
            return window.innerWidth < maxWidth;
        }});
});