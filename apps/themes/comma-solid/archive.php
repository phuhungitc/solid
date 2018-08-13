<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Comma_Solid
 */

get_header();
?>
    <div class="container">
        <div id="primary" class="content-area search_page">
            <main id="main" class="site-main">

                <?php
                wp_breadcrumbs();
                if (have_posts()) : ?>

                    <header class="page-header">
                        <?php
                        the_archive_title('<h1 class="page-title title_page">', '</h1>');
                        the_archive_description('<div class="archive-description">', '</div>');
                        ?>
                    </header><!-- .page-header -->

                    <?php
                    /* Start the Loop */
                    while (have_posts()) :
                        the_post();

                        ?>
                        <div class="item_search">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="item_post">
                                        <a href="<?php the_permalink()?>">
                                            <figure>
                                                <?php the_post_thumbnail('thumbnail-custom', array('class'=>'img-fluid'));?>
                                            </figure>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <h4 class="title_page"><a href="<?php the_permalink()?>"><?php the_title()?></a></h4>
                                    <?php the_excerpt();?>
                                </div>
                            </div>
                        </div>
                    <?php

                    endwhile;

                    the_posts_navigation();

                else :

                    get_template_part('template-parts/content', 'none');

                endif;
                ?>

            </main><!-- #main -->
        </div><!-- #primary -->
    </div>


<?php
get_footer();
