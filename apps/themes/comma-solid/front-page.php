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
        <div class="primaryslider owl-carousel owl-theme">
            <div class="item_banner text-center">
                <img src="<?php echo get_template_directory_uri()?>/images/bannerpri.jpg" class="img-fluid" alt="">
                <div class="meta_info">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 181 308">
                        <path id="Path_213" data-name="Path 213" class="cls-1" d="M247-171v-33.5H68v306H245.5v-140" transform="translate(-67 205.5)"/>
                    </svg>
                    <p>Chúng tôi tự hào về</p>
                    <h3>Chất lượng</h3>
                </div>
            </div>
            <div class="item_banner text-center">
                <img src="<?php echo get_template_directory_uri()?>/images/bannerpri.jpg" class="img-fluid" alt="">
                <div class="meta_info">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 181 308">
                        <path id="Path_213" data-name="Path 213" class="cls-1" d="M247-171v-33.5H68v306H245.5v-140" transform="translate(-67 205.5)"/>
                    </svg>
                    <p>Chúng tôi tự hào về</p>
                    <h3>Chất lượng</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="intro">
        <div class="container">
            <div class="intro-inner">
                <div class="row justify-content-end">
                    <div class="col-sm-2"></div>
                    <div class="col-md-auto">
                        <h3 data-aos="fade-right">WELCOME to SOLID</h3>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <div class="row">
                    <div class="col-sm-5">
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8"  data-aos="fade-left">
                                <img src="<?php echo get_template_directory_uri()?>/images/welcome2x.png" class="img-fluid" alt="">
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="intro-right">
                            <div class="row">
                                <div class="col-sm-6"  data-aos="fade-up">
                                    <p>Lorem ipsum dolor sit amet, conseeaer adipiscing elit. Aenean commodo ligua eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dismoné, na ridiculus mus. Donec quam felis, ultries nec, pellentesque eu, pretium qs, sem. Nulla consequat mass quis enim. Nulla consequat massa quis enim.</p>
                                </div>
                                <div class="col-sm-6" data-aos="fade-down">
                                    <p>Lorem ipsum dolor sit amet, conseeaer adipiscing elit. Aenean commodo ligua eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dismoné, na ridiculus mus. Donec quam felis, ultries nec, pellentesque eu, pretium qs, sem. Nulla consequat mass quis enim. Nulla consequat massa quis enim.</p>
                                </div>
                            </div>
                        </div>

                        <a href="" class="btn btn-light" data-aos="fade-up">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--intro-->
    <div class="service">
        <div class="container">
            <h3 class="text-right" data-aos="fade-right">
                DỊCH VỤ
            </h3>
            <div class="meta_description text-right" data-aos="fade-right">
                <p>Lorem ipsum dolor sit amet, conseeaer</p>
                <p>adipiscing elit. Aenean commodo ligua</p>
                <p>eget dolor. Aenean massa.</p>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service1.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ VÀ
                                <br>THI CÔNG NỘI THẤT</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="200">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service2.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ & SẢN
                                <br>XUẤT QUẢNG CÁO</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="400">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service3.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ & CHẾ TẠO
                                <br>CƠ KHÍ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-sm-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="300">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service4.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">GIA CÔNG VẬT LIỆU</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item_service" data-aos="fade-up" data-aos-delay="600">
                        <figure class="effect-apollo">
                            <img src="<?php echo get_template_directory_uri()?>/images/service5.png" class="img-fluid" alt="">
                            <figcaption></figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">THIẾT KẾ & CHẾ TẠO
                                <br>SP CHUYÊN BIỆT</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--service-->
    <div class="project">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-4">
                    <h4 data-aos="flip-left"><span>DỰ ÁN
                    <br>GẦN -
                    <br>NHẤT</span></h4>
                    <div class="item_project" data-aos="fade-down">
                        <figure>
                            <img src="<?php echo get_template_directory_uri()?>/images/project1.png" class="img-fluid" alt="">
                            <figcaption>
                                <div class="detail">
                                    <a href="">Chi tiết</a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">LUXURY BAR</a>
                            <div class="position">
                                Quận Bình Thạnh
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item_project margin-large" data-aos="fade-up">
                        <figure>
                            <img src="<?php echo get_template_directory_uri()?>/images/project2.png" class="img-fluid" alt="">
                            <figcaption>
                                <div class="detail">
                                    <a href="">Chi tiết</a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">LUXURY BAR</a>
                            <div class="position">
                                Quận Bình Thạnh
                            </div>
                        </div>
                    </div>
                    <div class="item_project" data-aos="fade-up">
                        <figure>
                            <img src="<?php echo get_template_directory_uri()?>/images/project3.png" class="img-fluid" alt="">
                            <figcaption>
                                <div class="detail">
                                    <a href="">Chi tiết</a>
                                </div>
                            </figcaption>
                        </figure>
                        <div class="title_service">
                            <a href="">LUXURY BAR</a>
                            <div class="position">
                                Quận Bình Thạnh
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--project-->

<?php
get_footer();
