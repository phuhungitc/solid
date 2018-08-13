<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package Comma_Solid
 */

get_header();
?>
    <div class="container">
        <div id="primary" class="content-area">
            <main id="main" class="site-main">

                <section class="error-404 not-found">
                    <header class="page-header">
                        <h1 class="page-title title_page"><span><?php esc_html_e('Oops! That page can&rsquo;t be found.', 'comma-solid'); ?></span></h1>
                    </header><!-- .page-header -->

                    <div class="page-content">
                        <p><?php esc_html_e('It looks like nothing was found at this location. Maybe try one of the links below or a search?', 'comma-solid'); ?></p>
                        <br>
                        <?php
                        get_search_form();

                        ?>

                    </div><!-- .page-content -->
                </section><!-- .error-404 -->

            </main><!-- #main -->
        </div><!-- #primary -->
    </div>
<?php
get_footer();
