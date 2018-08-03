<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Comma_Solid
 */

get_header();

?>
    <div class="container">
        <div id="primary" class="content-area">
            <main id="main" class="site-main">
                <?php
                wp_breadcrumbs();
                while (have_posts()) :
                    the_post();

                    get_template_part('template-parts/content', '');

                    // If comments are open or we have at least one comment, load up the comment template.
                    if (comments_open() || get_comments_number()) :
                        comments_template();
                    endif;

                endwhile; // End of the loop.
                ?>

            </main><!-- #main -->
        </div><!-- #primary -->
    </div>
<?php
get_footer();
