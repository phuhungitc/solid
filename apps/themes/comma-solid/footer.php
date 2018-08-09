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

<footer id="footer-site">
    <div class="container">
        <a href="" class="logo-footer" data-aos="fade-left">
            <img src="<?php echo get_template_directory_uri()?>/images/logoft.png" class="img-fluid" alt="">
        </a>
        <div class="row">
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-3" data-aos="fade-up">
                        <p>305 Lê Văn Sỹ,
                            Tân Bình, tp.HCM</p>
                    </div>
                    <div class="col-sm-3" data-aos="fade-up">
                        <p>Solid@gmail.com</p>
                    </div>
                    <div class="col-sm-3" data-aos="fade-up">
                        <p>+(08) 408 6314</p>
                        <p>+84 0166 809 2362</p>
                    </div>
                    <div class="col-sm-3" data-aos="fade-up">
                        <p>Mon - Fri: 8AM - 6PM</p>
                        <p>Sat: 9AM - 4PM</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-2" data-aos="fade-left">
                <ul class="list-inline">
                    <li class="list-inline-item"><a href=""><img src="<?php echo get_template_directory_uri()?>/images/facebook.png" class="img-fluid" alt=""></a></li>
                    <li class="list-inline-item"><a href=""><img src="<?php echo get_template_directory_uri()?>/images/skype.png" class="img-fluid" alt=""></a></li>
                </ul>
            </div>
            <div class="col-sm-2 text-right" data-aos="fade-right">
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
            Solid Decor & interior, all rights reserved
        </div>
        <div class="design-by">
            Designed by Comma
        </div>
    </div>
</footer>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7cMS6OiPABZtUyEwn0xbKF1hkfH0NZB0"></script>
<?php wp_footer(); ?>

</body>
</html>
