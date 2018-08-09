<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Comma_Solid
 */

get_header();
?>
    <div class="banner">
    <?php if (get_field('slider_default', 'option') == true && get_field('shortcode_slider_homepage','option')):
            echo do_shortcode(wp_trim_words(get_field('shortcode_slider_homepage','option')));
    endif; ?>
    </div>
    <div class="intro">
        <div class="container">
            <div class="intro-inner">
                <div class="row justify-content-end">
                    <div class="col-sm-2"></div>
                    <div class="col-md-auto">
                        <h3 data-aos="fade-right">
                            <?php echo get_field('title_first')?>
                        </h3>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <div class="row">
                    <div class="col-sm-5">
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8"  data-aos="fade-left">
                                <img src="<?php echo get_field('image_first')['url']?>" class="img-fluid" alt="<?php echo get_field('image_first')['alt']?>">
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="intro-right">
                            <div class="row">
                                <div class="col-sm-6"  data-aos="fade-up">
                                    <p>
                                        <?php echo get_field('right')['content_first']?>
                                    </p>
                                </div>
                                <div class="col-sm-6" data-aos="fade-down">
                                    <p>
                                        <?php echo get_field('right')['content_second']?>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <a href="<?php echo get_field('right')['link']['url'] ?>" class="btn btn-light" data-aos="fade-up"><?php echo get_field('right')['link']['title'];?></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--intro-->
    <div class="service" <?php if(get_field('background_service')['url']!=""): echo 'style="background-image:url('.get_field('background_service')['url'].')"';endif;?>>
        <div class="container">
            <h3 class="text-right" data-aos="fade-right">
               <?php echo get_field('title_service')?>
            </h3>
            <div class="meta_description text-right" data-aos="fade-right">
               <?php echo get_field('description_service')?>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service1.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ VÀ
                                <br>THI CÔNG NỘI THẤT</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="200">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service2.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ & SẢN
                                <br>XUẤT QUẢNG CÁO</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="400">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service3.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ & CHẾ TẠO
                                <br>CƠ KHÍ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-sm-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="300">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service4.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">GIA CÔNG VẬT LIỆU</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="600">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service5.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ & CHẾ TẠO
                                <br>SP CHUYÊN BIỆT</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--service-->
    <div class="project" <?php if(get_field('background_project')['url']!=""): echo 'style="background-image: url('.get_field('background_project')['url'].')"'; endif;?>>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-4">
                    <h4 data-aos="flip-left"><span>
                            <?php echo get_field('title_project')?>
                        </span></h4>
                    <div class="item_project" data-aos="fade-down">
                        <figure>
                            <img src="<?php echo get_template_directory_uri()?>/images/project1.png" class="img-fluid" alt="">
                            <figcaption>
                                <div class="detail">
                                    <a href="">Chi tiết</a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">LUXURY BAR</a>
                            <div class="position">
                                Quận Bình Thạnh
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item_project margin-large" data-aos="fade-up">
                        <figure>
                            <img src="<?php echo get_template_directory_uri()?>/images/project2.png" class="img-fluid" alt="">
                            <figcaption>
                                <div class="detail">
                                    <a href="">Chi tiết</a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">LUXURY BAR</a>
                            <div class="position">
                                Quận Bình Thạnh
                            </div>
                        </div>
                    </div>
                    <div class="item_project" data-aos="fade-up">
                        <figure>
                            <img src="<?php echo get_template_directory_uri()?>/images/project3.png" class="img-fluid" alt="">
                            <figcaption>
                                <div class="detail">
                                    <a href="">Chi tiết</a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">LUXURY BAR</a>
                            <div class="position">
                                Quận Bình Thạnh
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--project-->

<?php
get_footer();
