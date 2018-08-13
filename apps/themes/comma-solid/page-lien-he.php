<?php
/**
 * Created by PhpStorm.
 * User: ARIES HAI AU
 * Date: 03/08/2018
 * Time: 18:02 PM
 * Template Name: Lien He Template
 */
get_header();
?>
    <div class="page_contact">
        <div class="box-first">
            <div class="container">
                <div class="box-inner">
                    <h1 class="title__second" data-aos="fade-left">
                        <span>CÔNG TY CP THIẾT KẾ –<br>
                        THI CÔNG NỘI THẤT SOLID</span>
                    </h1>
                    <div class="info">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-6" data-aos="fade-down">
                                        <p><strong>Trụ sở chính:</strong></p>
                                        <p>305 Lê Văn Sỹ, Tân Bình, tp.HCM</p>
                                    </div>
                                    <div class="col-sm-6" data-aos="fade-down">
                                        <p><strong>Xưởng sản xuất:</strong></p>
                                        <p>305 Lê Văn Sỹ, Tân Bình, tp.HCM</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-4" data-aos="fade-down">
                                        <p><strong>Giờ mở cửa:</strong></p>
                                        <p>Mon - Fri: 8AM - 6PM</p>
                                        <p>Sat: 9AM - 4PM</p>
                                    </div>
                                    <div class="col-sm-4" data-aos="fade-down">
                                        <p><strong>Số điện thoại:</strong></p>
                                        <p>.+(08) 408 6314</p>
                                        <p>+84 0166 809 2362</p>
                                    </div>
                                    <div class="col-sm-4" data-aos="fade-down">
                                        <p><strong>Email:</strong></p>
                                        <p>Solid@gmail.com</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="map" data-aos="fade-up">
                        <div id="map" style="width: 100%; height: 300px" data-latlong="<?php echo get_field('maps')['latitude'].'|'.get_field('maps')['longitude']?>" data-winfo="<?php echo get_field('content_map')?>"></div>
                    </div>
                </div>
            </div>
        </div><!-- box-first -->
        <div class="box-second">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-sm-9">
                        <p class="text-center" data-aos="fade-left">
                            <?php echo get_field('content_thanks')?>
                        </p>
                        <div class="form" data-aos="fade-down">
                            <?php echo do_shortcode(get_field('shorcode_form'))?>
                        </div>
                    </div>
                </div>
            </div>


        </div>

    </div>


<?php
get_footer();
