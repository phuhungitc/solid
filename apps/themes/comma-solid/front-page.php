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

                        <a href="<?php echo get_field('right')['link']['url'] ?>" class="btn btn-light" data-aos="fade-up"><?php echo __('Xem thêm','comma-solid');?></a>
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
            <div class="row justify-content-center">
                <?php
                $service = array(
                    'posts_per_page'   => -1,
                    'post_type'        => 'service',
                    'post_status'      => 'publish',
                );
                $allservice = new WP_Query($service);
                $j=0;
                if($allservice->have_posts()): while ($allservice->have_posts()): $allservice->the_post();
                if($j==3){
                    $j=0;
                }
                ?>
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="<?php echo 200+$j*200?>">
                        <a href="<?php the_permalink()?>" title="<?php the_title()?>">
                            <figure class="effect-apollo">
                                <?php the_post_thumbnail('thumbnail',array('class'=>'img-fluid'))?>
                                <figcaption></figcaption>
                            </figure>
                        </a>

                        <div class="title_service">
                            <a href="<?php the_permalink()?>" title="<?php the_title()?>"><?php the_title()?></a>
                        </div>
                    </div>
                </div>
                <?php $j++; endwhile; endif; wp_reset_postdata()?>

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
                    <?php
                    $project = array(
                        'posts_per_page'   => 3,
                        'post_type'        => 'project',
                        'post_status'      => 'publish',
                    );
                    $allproject = new WP_Query($project);
                    $i=1;
                    if($allproject->have_posts()): while ($allproject->have_posts()): $allproject->the_post();
                    if($i==2){
                        echo '</div><div class="col-sm-4">';
                    }
                    ?>
                    <div class="item_project <?php echo ($i==2)? 'margin-large' : '';?>" data-aos="fade-down">
                        <figure>
                           <?php the_post_thumbnail('thumbnail-custom',array('class'=>'img-fluid'))?>
                            <figcaption>
                                <div class="detail">
                                    <a href="<?php the_permalink()?>"><?php _e('Chi tiết','comma-solid')?></a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="<?php the_permalink()?>"><?php the_title()?></a>
                            <div class="position">
                                <?php echo get_field('location')?>
                            </div>
                        </div>
                    </div>
                    <?php $i++; endwhile; endif; wp_reset_postdata()?>
                </div>
            </div>
        </div>
    </div><!--project-->

<?php
get_footer();
