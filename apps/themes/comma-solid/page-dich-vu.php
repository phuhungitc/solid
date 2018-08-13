<?php
/**
 * Created by PhpStorm.
 * User: ARIES HAI AU
 * Date: 03/08/2018
 * Time: 15:22 PM
 * Template Name: Dich Vu Template
 */
get_header();
?>
<div class="page-service">
    <div class="box-first">
        <div class="container">
            <div class="box-inner">
                <div class="row">
                    <div class="col-sm-8">
                        <h1 data-aos="fade-left">
                            Thiết kế &<br>
                            Thi công nội thất
                        </h1>
                        <div class="row">
                            <div class="col-sm-6">
                                <p data-aos="fade-left">Lorem ipsum dolor sit amet, conseeaer adipiscing elit. Aenean commodo ligua eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dismoné, na ridiculus mus. Donec quam felis, ultries nec.</p>
                                <div class="list_service" data-aos="fade-left">
                                    <div class="row">
                                        <div class="col-sm-4 col-6">
                                            <p>Bar</p>
                                        </div>
                                        <div class="col-sm-4 col-6">
                                            <p>Nhà phố</p>
                                        </div>
                                        <div class="col-sm-4 col-6">
                                            <p>Cafe</p>
                                        </div>
                                        <div class="col-sm-4 col-6">
                                            <p>LOUNGE</p>
                                        </div>
                                        <div class="col-sm-4 col-6">
                                            <p>CĂN HỘ</p>
                                        </div>
                                        <div class="col-sm-4 col-6">
                                            <p>VĂN PHÒNG</p>
                                        </div>
                                    </div>
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
        </div>
    </div><!--box-first-->
    <div class="box-second">
        <div class="container">
            <h3 class="title_page text-center" data-aos="fade-down">
                Các dự án đã thực hiện
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
                                        )
                                    );
                                    $allproject = new WP_Query($project);
                                    if($allproject->have_posts()):while ($allproject->have_posts()):$allproject->the_post();
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
                    'orderby'   => 'rand',
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
