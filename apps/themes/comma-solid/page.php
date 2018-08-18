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
wp_breadcrumbs();
?>
    <div class="container">
        <div id="primary" class="content-area page_content">
            <main id="main" class="site-main">
                <?php
                while (have_posts()) :
                    the_post();
                ?>
                <div class="row">
                    <div class="col-sm-4 order-sm-last">
                        <figure class="thumbnail_page">
                            <?php the_post_thumbnail()?>
                        </figure>
                    </div>
                    <div class="col-sm-8 order-sm-first">
                        <h1 class="title_page"><?php the_title()?></h1>
                        <div class="content_page_inner">
                            <?php the_content();?>
                        </div>
                    </div>
                </div>
                <?php
                endwhile; // End of the loop.
                ?>

            </main><!-- #main -->
        </div><!-- #primary -->
    </div>


<?php
get_footer();
