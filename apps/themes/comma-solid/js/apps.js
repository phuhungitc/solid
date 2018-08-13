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
            var uluru = jQuery('#map').data('latlong').split('|');
            var $center = {lat: uluru[0]*1,lng: uluru[1]*1};
            var wininfo = jQuery('#map').data('winfo');
            console.log($center);
            map = new google.maps.Map(document.getElementById('map'), {
                center: $center,
                zoom: 15
            });
            var contentString = wininfo;
            var infowindow = new google.maps.InfoWindow({
                content: contentString
            });

            var marker = new google.maps.Marker({position: $center, map: map,title: 'Title'});
            marker.addListener('click', function() {
                infowindow.open(map, marker);
            });
            infowindow.open(map, marker);


        }
    },
    menumobile: function(){
        if(jQuery('#menumobile.menu-arrow').length){
            jQuery('#menumobile.menu-arrow').each(function(){
                jQuery(this).toggle(function(){
                        jQuery('.menumobile').attr('style','transform:translate3d(-200px,0,0);-webkit-transform:translate3d(-200px,0,0); transition: transform 0.5s ease');
                        jQuery(this).find('i').removeClass('fa-bars');
                        jQuery(this).find('i').addClass('fa-times');
                    },
                    function(){
                        jQuery('.menumobile').attr('style','transform:translate3d(0,0,0);-webkit-transform:translate3d(0,0,0);transition: transform 0.5s ease');
                        jQuery(this).find('i').removeClass('fa-times');
                        jQuery(this).find('i').addClass('fa-bars');
                    });
            });
        }
    },
    onchangetab: function(){
        if(jQuery('#nav-tab > a').length){
            jQuery('#nav-tab > a').each(function(){
               jQuery(this).on('click',function () {
                   setTimeout(function () {
                       AOS.refresh();
                   },1000);
               });
            });
        }
    },
    searchpop: function(){
        jQuery('.search_click').on('click', function(event) {
            jQuery('#search').addClass('open');
            jQuery('#search > form > input[type="search"]').focus();
        });
        jQuery('#search, #search button.close').on('click keyup', function(event) {
            if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
                jQuery(this).removeClass('open');
            }
        });
    }

};
jQuery(document).ready(function(){
    Apps.menumobile();
    Apps.scrollfixed();
    Apps.drawsvgfunc();
    Apps.slider();
    Apps.searchpop();
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
    Apps.onchangetab();
});