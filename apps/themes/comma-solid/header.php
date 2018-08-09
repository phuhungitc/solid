<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Comma_Solid
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <?php wp_head(); ?>
    <?php
    if(function_exists('get_field')&&get_field('google_analytics','option')==true):
    ?>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo wp_trim_words(get_field('id_analytics','option'))?>"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', '<?php echo wp_trim_words(get_field('id_analytics','option'))?>');
    </script>
    <?php endif;?>
</head>

<body <?php body_class(); ?>>
<header id="header_site" class="<?php echo (function_exists('get_field')&&get_field('fixed_on_scroll','option')==true)? 'fixed-top' : 'none-fixed';?>">
    <div class="container">
        <div class="row">
            <div class="col-sm-2" data-aos="fade-right">
                <a href="<?php echo site_url()?>" title="<?php echo bloginfo('title')?>">
                    <?php if(function_exists('get_field')&&get_field('logo','option')):?>
                    <img src="<?php echo get_field('logo','option')?>" class="img-fluid" alt="<?php echo bloginfo('title')?>">
                    <?php else:?>
                    <img src="<?php echo get_template_directory_uri()?>/images/logopri.png" class="img-fluid" alt="<?php echo bloginfo('title')?>">
                    <?php endif;?>
                </a>
            </div>
            <div class="col-sm-7" data-aos="fade-down">
                <div class="menu_primary">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <?php
                            wp_nav_menu(array(
                                'theme_location' => 'menu-1',
                                'menu_id' => 'menu-1',
                                'menu_class' => 'navbar-nav mr-auto',
                            ));
                            ?>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="col-sm-3" data-aos="fade-left">
                <div class="right-top-nav">
                    <ul class="nav justify-content-end">
                        <li class="nav-item"><a class="nav-link active" href="#"><img src="<?php echo get_template_directory_uri()?>/images/phone.png" class="img-fluid" alt="">1900.636.099</a></li>
                        <li class="nav-item"><a class="nav-link active" href="#"><img src="<?php echo get_template_directory_uri()?>/images/search.png" class="img-fluid" alt=""></a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</header>
        <div id="content" class="site-content">
