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
<div id="search">
    <span class="close">x</span>
    <form role="search" id="searchform" action="<?php echo home_url( '/' ); ?>" method="get">
        <div class="container">
            <div class="row justify-content-center">
                <div class="input-group col-6">
                    <input type="text" name="s" class="form-control" value="<?php the_search_query(); ?>" placeholder="Bạn đang tìm gì?" aria-label="Bạn đang tìm gì?" aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i class="fa fa-arrow-right" aria-hidden="true"></i></button>
                    </div>
                </div>
            </div>
        </div>

    </form>
</div>
<div class="menumobile d-block d-sm-none">
    <?php
    wp_nav_menu(array(
        'menu' => 'menu-1',
        'theme_location' => 'menu-1',
        'menu_class' => 'list-unstyled text-center',
        'container' => '',
    ));
    ?>
    <div id="menumobile" class="nav-item menu-arrow d-block d-sm-none">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
</div>
<div class="all-element">
    <div class="price_list d-none d-sm-block">
        <div class="price_inner">
            <a href="javascript:;" class="show_form">Liên hệ báo giá</a>
        </div>
    </div>
    <div id="form-right" class="form">
        <div class="close"><i class="fa fa-times" aria-hidden="true"></i></div>
        <?php echo do_shortcode('[contact-form-7 id="158" title="Contact form 1"]')?>
        <footer>
            <div class="col-12">
                <div class="row">
                    <div class="col-sm-10">
                        <div class="row">
                            <div class="col-sm-5" data-aos="fade-up">
                                <strong>Trụ sở chính:</strong>
                                <p><?php echo get_field('address','option')?></p>
                            </div>
                            <div class="col-sm-4" data-aos="fade-up">
                                <strong>Số điện thoại:</strong>
                                <p><?php echo get_field('phone_ft','option')?></p>
                            </div>
                            <div class="col-sm-3" data-aos="fade-up">
                                <strong>Email:</strong>
                                <p><?php echo get_field('email','option')?></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2 col-6" data-aos="fade-left">

                        <ul class="list-inline">
                            <li class="list-inline-item"><a target="_blank" href="<?php echo get_field('facebook_url','option')?>"><img src="<?php echo get_template_directory_uri()?>/images/facebook.png" class="img-fluid" alt=""></a></li>
                            <li class="list-inline-item"><a href="skype:<?php echo get_field('skype','option')?>?chat"><img src="<?php echo get_template_directory_uri()?>/images/skype.png" class="img-fluid" alt=""></a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </footer>
    </div>
<header id="header_site" class="<?php echo (function_exists('get_field')&&get_field('fixed_on_scroll','option')==true)? 'fixed-top' : 'none-fixed';?>">
    <div class="container">
        <div class="row">
            <div class="col-sm-2 col-5" data-aos="fade-right">
                <div id="logo_site">
                    <a href="<?php echo site_url()?>" title="<?php echo bloginfo('title')?>">
                        <?php if(function_exists('get_field')&&get_field('logo','option')):?>
                            <img src="<?php echo get_field('logo','option')?>" class="img-fluid" alt="<?php echo bloginfo('title')?>">
                        <?php else:?>
                            <img src="<?php echo get_template_directory_uri()?>/images/logopri.png" class="img-fluid" alt="<?php echo bloginfo('title')?>">
                        <?php endif;?>
                    </a>
                </div>
            </div>
            <div class="col-sm-7 d-none d-sm-block" data-aos="fade-down">
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
            <div class="col-sm-3 col-7" data-aos="fade-left">
                <div class="right-top-nav">
                    <ul class="nav justify-content-end">
                        <li class="nav-item"><a class="nav-link" href="tel:<?php echo get_field('phone','option')?>"><img src="<?php echo get_template_directory_uri()?>/images/phone.png" class="img-fluid" alt=""><?php echo get_field('phone','option')?></a></li>
                        <li class="nav-item d-none d-sm-block"><a class="nav-link search_click" href="javascript:;"><img
                                        src="<?php echo get_template_directory_uri()?>/images/search.png" alt=""></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</header>
        <div id="content" class="site-content">
