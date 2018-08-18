<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Comma_Solid
 */

get_header();

wp_breadcrumbs();

?>
    <div class="single_project">
        <div class="container">
            <?php while(have_posts()): the_post();?>
            <div class="row">
                <div class="col-sm-7">
                    <div class="box_content">
                        <h1 class="page-title" data-aos="fade-left">
                            <span><?php the_title()?></span>
                        </h1>

                        <div class="row">
                            <div class="col-sm-8">
                                <div class="content_project" data-aos="fade-up">
                                    <?php the_content();?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box_second">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="content_text" data-aos="fade-left">
                            <?php echo get_field('content_left')?>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="right_content" data-aos="fade-right">
                            <figure>
                                <img src="<?php echo get_field('image_right')['url']?>" class="img-fluid" alt="">
                            </figure>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <?php if(get_field('image_gallery')&& count(get_field('image_gallery'))>0):?>
            <div class="box_third" data-aos="fade-up">
                <section class="slickcenter slider">
                    <?php  foreach (get_field('image_gallery') as $k):?>
                        <div>
                            <img src="<?php echo $k['image']['url']?>" class="img-fluid">
                            <div class="title_slider"><?php echo $k['title']?></div>
                        </div>
                    <?php endforeach; ?>
                </section>
            </div>
        <?php endif; endwhile; wp_reset_postdata();?>
        <div class="box_fourth">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5">
                        <h3 class="title_page" data-aos="fade-left">Các dự án nổi bật</h3>
                    </div>
                    <div class="col-sm-7">
                        <div class="post_title_list">
                            <div class="row">
                                <?php
                                $project_fea = array(
                                    'posts_per_page'   => 12,
                                    'offset'             => 3,
                                    'post_type'        => 'project',
                                    'post_status'      => 'publish',
                                    'meta_key'          => 'featured_project',
                                    'meta_value'        => true,
                                    'post__not_in'      => array(get_the_ID())
                                );
                                $allproject_fea = new WP_Query($project_fea);
                                if($allproject_fea->have_posts()):while ($allproject_fea->have_posts()):$allproject_fea->the_post();
                                    ?>
                                    <div class="col-sm-4 col-6" data-aos="fade-right">
                                        <a href="<?php the_permalink()?>"><?php the_title()?></a>
                                    </div>
                                <?php endwhile; endif; wp_reset_postdata();?>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <?php
                    $project = array(
                        'posts_per_page'   => 3,
                        'post_type'        => 'project',
                        'post_status'      => 'publish',
                        'meta_key'          => 'featured_project',
                        'meta_value'        => true,
                        'post__not_in'      => array(get_the_ID()),
                    );
                    $allproject = new WP_Query($project);
                    if($allproject->have_posts()):while ($allproject->have_posts()):$allproject->the_post();
                        ?>
                        <div class="col-sm-3">
                            <figure data-aos="fade-up" data-aos-delay="200">
                                <?php the_post_thumbnail('square',array('class'=>'img-fluid'))?>
                                <div class="meta_item">
                                    <a href="<?php the_permalink()?>"><?php the_title()?></a>
                                </div>
                            </figure>
                        </div>
                    <?php
                    endwhile;
                    else:
                        echo '<div class="col-sm-12"> <div class="alert alert-secondary" role="alert"> Dự án '.$a->name.' đang được cập nhật</div></div>';
                    endif; wp_reset_postdata();
                    ?>
                </div>
            </div>
        </div>
    </div>


<?php
get_footer();
