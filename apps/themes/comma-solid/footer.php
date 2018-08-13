<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Comma_Solid
 */

?>

<div id="footer-site">
    <div class="container">
        <a href="<?php echo site_url()?>" class="logo-footer" data-aos="fade-left">
            <img src="<?php echo (get_field('logo_ft','option')!="")? get_field('logo_ft','option') : get_template_directory_uri().'/images/logoft.png'?>" class="img-fluid" alt="">
        </a>
        <div class="row">
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-3" data-aos="fade-up">
                        <p><?php echo get_field('address','option')?></p>
                    </div>
                    <div class="col-sm-3" data-aos="fade-up">
                        <p><?php echo get_field('email','option')?></p>
                    </div>
                    <div class="col-sm-3 col-6" data-aos="fade-up">
                        <p><?php echo get_field('phone_ft','option')?></p>
                    </div>
                    <div class="col-sm-3 col-6" data-aos="fade-up">
                        <p><?php echo get_field('open_hours','option')?></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 col-6" data-aos="fade-left">
                <ul class="list-inline">
                    <li class="list-inline-item"><a target="_blank" href="<?php echo get_field('facebook_url','option')?>"><img src="<?php echo get_template_directory_uri()?>/images/facebook.png" class="img-fluid" alt=""></a></li>
                    <li class="list-inline-item"><a href="skype:<?php echo get_field('skype','option')?>?chat"><img src="<?php echo get_template_directory_uri()?>/images/skype.png" class="img-fluid" alt=""></a></li>
                </ul>
            </div>
            <div class="col-sm-2  col-6 text-right" data-aos="fade-right">
                <?php if(function_exists('get_field')&&get_field('scroll_on_top','option')==true):?>
                <div id="goTop">
                    <?php if (get_field('image_for_scroll_on_top', 'option')):?>
                    <img src="<?php echo get_field('image_for_scroll_on_top', 'option')?>" class="img-fluid" alt="<?php _e("Scroll on top", "comma-solid") ?>">
                    <?php else:?>
                        <img src="<?php echo get_template_directory_uri()?>/images/gotop.png" class="img-fluid" alt="<?php _e("Scroll on top", "comma-solid") ?>">
                    <?php endif;?>
                </div>
                <?php endif;?>
            </div>
        </div>
        <div class="copyright">
           <?php echo get_field('copyright','option')?>
        </div>
        <div class="design-by">
            Designed by <a href="http://commamedia.vn" target="_blank" title="Comma Media">Comma</a>
        </div>
    </div>
</footer>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7cMS6OiPABZtUyEwn0xbKF1hkfH0NZB0"></script>
<?php wp_footer(); ?>

</body>
</html>
