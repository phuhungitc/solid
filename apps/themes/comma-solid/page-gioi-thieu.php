<?php
/**
 * Created by PhpStorm.
 * User: ARIES HAI AU
 * Date: 03/08/2018
 * Time: 10:19 AM
 * Template Name: Gioi Thieu template
 */
get_header();
?>
<div class="page-intro">
    <div class="box-first">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1 class="title_page" data-aos="fade-left">
                        <?php the_title()?>
                    </h1>
                    <figure data-aos="fade-left">
                        <img src="<?php echo get_field('left')['image_first']['url']?>" class="img-fluid img-intro" alt="">
                    </figure>
                    <div class="row justify-content-end">
                        <div class="col-sm-9">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="content_first text-justify" data-aos="fade-up">
                                        <p>
                                            <?php echo get_field('left')['content_first']?>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="content_first text-justify" data-aos="fade-up">
                                        <p>
                                            <?php echo get_field('left')['content_second']?>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-sm-4">
                    <div class="img-fixed" data-aos="fade-down">
                        <img src="<?php echo get_template_directory_uri()?>/images/lamp.png" class="img-fluid" alt="">
                    </div>
                    <div class="hover05" data-aos="fade-right">
                        <figure>
                            <img src="<?php echo get_field('image_second')['url']?>" class="img-fluid" alt="">
                        </figure>
                    </div>
                </div>
            </div>
            <div class="box_first end">
                <div class="row">
                    <div class="col-sm-3" data-aos="fade-up" data-aos-delay="200">
                        <p><?php echo get_field('content_bt_first')?></p>
                    </div>
                    <div class="col-sm-3"  data-aos="fade-up" data-aos-delay="500">
                        <p><?php echo get_field('content_bt_second')?></p>
                    </div>
                    <div class="col-sm-3"  data-aos="fade-up" data-aos-delay="800">
                        <p><?php echo get_field('content_bt_third')?></p>
                    </div>
                    <div class="col-sm-3"  data-aos="fade-up" data-aos-delay="1100">
                        <p><?php echo get_field('content_bt_fourth')?></p>
                    </div>
                </div>
            </div>

        </div>
    </div><!--box-first-->
    <div class="box-second">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="hover05">
                        <figure data-aos="fade-left">
                            <img  src="<?php echo get_field('image_third')['url']?>" class="img-fluid" alt="">
                        </figure>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h3 class="title_page" data-aos="fade-right">
                        <span>
                            <?php echo get_field('right')['title_first']?>
                        </span>
                    </h3>
                    <p data-aos="fade-up">
                        <?php echo get_field('right')['content']?>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="box-third">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-3 text-center">
                    <figure data-aos="flip-left">
                        <img src="<?php echo get_field('left_por')['image']['url']?>" class="img-fluid" alt="">
                    </figure>
                    <h4 class="title_medium" data-aos="fade-left"><?php echo get_field('left_por')['title']?></h4>
                    <p data-aos="fade-left"><?php echo get_field('left_por')['content']?></p>
                </div>
                <div class="col-sm-3 text-center">
                    <figure data-aos="fade-left">
                        <img src="<?php echo get_field('center_por')['image']['url']?>" class="img-fluid" alt="">
                    </figure>
                    <h4 class="title_medium" data-aos="fade-up"><?php echo get_field('center_por')['title']?></h4>
                    <p data-aos="fade-up"><?php echo get_field('center_por')['content']?></p>
                </div>
                <div class="col-sm-3 text-center">
                    <figure data-aos="flip-left">
                        <img src="<?php echo get_field('right_por')['image']['url']?>" class="img-fluid" alt="">
                    </figure>
                    <h4 class="title_medium" data-aos="fade-right"><?php echo get_field('right_por')['title']?></h4>
                    <p data-aos="fade-right"><?php echo get_field('right_por')['content']?></p>
                </div>
            </div>
        </div>
    </div><!--box-third-->
    <div class="box-fourth">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-11">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="title_page" data-aos="fade-left"><span>
                                    <?php echo get_field('left_end')['title']?>
                                </span></h4>
                            <div class="row">
                                <div class="col-sm-8">
                                    <p data-aos="fade-up">
                                        <?php echo get_field('left_end')['content']?>
                                    </p>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="hover05" data-aos="fade-right">
                                <figure>
                                    <img src="<?php echo get_field('image_end')['url']?>" class="img-fluid" alt="">
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--page_intro-->

<?php
get_footer();
