App = {
    focusevent: function () {
        if(jQuery('.form-group.hasevent').length){
            jQuery('.form-group.hasevent').each(function(){
                var $this = jQuery(this);
                jQuery(this).find('.form-control').focus(function(){
                    // $this.attr('style','padding-top: 20px');
                    $this.find('.label-event').addClass('label-focus');
                });
                jQuery(this).find('.dropdown-toggle').click(function(){
                    $this.find('.label-event').addClass('label-focus');
                });
                jQuery(this).find('.form-control').blur(function(){
                    // $this.attr('style','');
                    if($this.find('.form-control').val()!==''){
                        return false;
                    } else {
                        $this.find('.label-event').removeClass('label-focus');
                    }
                });
            });
        }
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
    App.focusevent();
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