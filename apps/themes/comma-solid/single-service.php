<?php
/**
 * Created by PhpStorm.
 * User: ARIES HAI AU
 * Date: 17/08/2018
 * Time: 13:52 PM
 */
get_header();
?>
<div class="page-service">
    <div class="box-first">
        <div class="container">
            <?php while(have_posts()):the_post();?>
            <div class="box-inner">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="row">
                            <div class="col-sm-9">
                                <h1 data-aos="fade-left">
                                    <?php the_title()?>
                                </h1>
                            </div>
                            <div class="col-sm-6">
                                <div data-aos="fade-left">
                                    <?php the_content();?>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <figure data-aos="fade-right">
                            <img src="<?php echo get_template_directory_uri()?>/images/service_1.png" class="img-fluid" alt="">
                        </figure>
                    </div>
                </div>
            </div>
        <?php endwhile; wp_reset_postdata();?>
        </div>
    </div><!--box-first-->
    <div class="box-second">
        <div class="container">
            <h3 class="title_page text-center" data-aos="fade-down">
                <?php _e('Các dự án đã thực hiện','comma-solid')?>
            </h3>
            <div class="row justify-content-center">
                <div class="col-sm-9">
                    <nav data-aos="fade-left">
                        <div class="nav justify-content-center" id="nav-tab" role="tablist">
                            <?php
                            $terms = get_terms([
                                'taxonomy' => 'project-type',
                                'hide_empty' => false,
                                'parent' => 0
                            ]);
                            $k = 0;
                            foreach ($terms as $t):
                                ?>
                            <a class="nav-item nav-link <?php echo ($k==0)? 'active': ''?>" id="nav-<?php echo $t->slug?>-tab" data-toggle="tab" href="#nav-<?php echo $t->slug?>" role="tab" aria-controls="nav-<?php echo $t->slug?>" aria-selected="true"><?php echo $t->name?></a>
                            <?php $k++; endforeach;?>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <?php
                        $terms_c = get_terms([
                            'taxonomy' => 'project-type',
                            'hide_empty' => false,
                            'parent' => 0
                        ]);
                        $o = 0;
                        foreach ($terms_c as $a):
                            ?>
                        <div class="tab-pane fade show <?php echo ($o==0)? 'active': ''?>" id="nav-<?php echo $a->slug?>" role="tabpanel" aria-labelledby="nav-<?php echo $a->slug?>-tab">
                            <div class="row">
                                <?php
                                    $ids = get_the_ID();
                                    $project = array(
                                        'posts_per_page'   => -1,
                                        'post_type'        => 'project',
                                        'post_status'      => 'publish',
                                        'tax_query' => array(
                                            array(
                                                'taxonomy' => 'project-type',
                                                'field' => 'term_id',
                                                'terms' => $a->term_id,
                                            )
                                        ),
                                    );
                                    $allproject = new WP_Query($project);
                                    if($allproject->have_posts()):while ($allproject->have_posts()):$allproject->the_post();
                                        if(in_array($ids,get_field('service'))):
                                ?>
                                <div class="col-sm-4">
                                    <figure data-aos="fade-up" data-aos-delay="200">
                                        <?php the_post_thumbnail('square',array('class'=>'img-fluid'))?>
                                        <div class="meta_item">
                                            <a href="<?php the_permalink()?>"><?php the_title()?></a>
                                        </div>
                                    </figure>
                                </div>
                                <?php
                                        endif;
                                    endwhile;
                                    else:
                                        echo '<div class="col-sm-12"> <div class="alert alert-secondary" role="alert"> Dự án '.$a->name.' đang được cập nhật</div></div>';
                                    endif; wp_reset_postdata();
                                ?>
                            </div>
                        </div>

                        <?php $o++; endforeach;?>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div><!--box-second-->
    <div class="box-third">
        <div class="container">
            <h3 class="text-center title_page" data-aos="fade-right">
                Dịch vụ khác
            </h3>

            <div class="row justify-content-center">
                <?php
                $service = array(
                    'posts_per_page'   => 4,
                    'post_type'        => 'service',
                    'post_status'      => 'publish',
                    'post__not_in'      => array(get_the_ID()),
                );
                $allservice = new WP_Query($service);
                $i= $j = 0;
                if($allservice->have_posts()): while ($allservice->have_posts()): $allservice->the_post();
                if($i==2){
                    echo '</div><div class="row justify-content-center">';
                }
                if($j==2){
                    $j=0;
                }
                ?>
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="<?php echo 200+$j*300?>">
                        <a href="<?php the_permalink()?>">
                            <figure class="effect-apollo">
                                <?php the_post_thumbnail('thumbnail',array('class'=>'img-fluid'))?>
                                <figcaption></figcaption>
                            </figure>
                        </a>
                        <div class="title_service">
                            <a href="<?php the_permalink()?>"><?php the_title()?></a>
                        </div>
                    </div>
                </div>
                <?php $i++; $j++; endwhile; endif; wp_reset_postdata()?>
            </div>
        </div>
    </div>

</div>
<?php
get_footer();