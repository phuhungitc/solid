<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package Comma_Solid
 */

get_header();
?>
<div class="container">
    <section id="primary" class="content-area search_page">
        <main id="main" class="site-main">

            <?php if ( have_posts() ) : ?>

                <header class="page-header">
                    <h1 class="title_page">
                        <?php
                        /* translators: %s: search query. */
                        printf( esc_html__( 'Search Results for: %s', 'comma-solid' ), '<span>' . get_search_query() . '</span>' );
                        ?>
                    </h1>
                </header><!-- .page-header -->

                <?php
                /* Start the Loop */
                while ( have_posts() ) :
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

                wp_pagenavi();

            else :

                get_template_part( 'template-parts/content', 'none' );

            endif;
            ?>

        </main><!-- #main -->
    </section><!-- #primary -->
</div>


<?php
get_footer();
