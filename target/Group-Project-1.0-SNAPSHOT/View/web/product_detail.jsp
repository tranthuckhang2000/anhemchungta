
<%--
  Created by IntelliJ IDEA.
  User: khangtran
  Date: 05/01/2021
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>
    <meta charset="utf-8">
    <!-- Favicon icon -->
    <link rel="shortcut icon" type="image/png" href="<c:url value='/images/favicon.png'/>"/>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, Ample lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Ample admin lite dashboard bootstrap 4 dashboard template">
    <meta name="description"
          content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>${d.ten_san_pham}</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/"/>
    <!-- Custom-Files -->
    <link href="<c:url value ='/decorator/web/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- Bootstrap css -->
    <link href="<c:url value='/decorator/web/style.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!--     Main css-->
    <link rel="stylesheet" href="<c:url value='/decorator/web/fontawesome-all.css'/>">
    <!--     Font-Awesome-Icons-CSS-->
    <link href="<c:url value='//decorator/webpopuo-box.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!--     pop-up-box-->
    <link href="<c:url value='/decorator/web/menu.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!--     menu style-->

    <!-- Custom CSS -->
    <link href="<c:url value='/decorator/admin/plugins/bower_components/chartist/dist/chartist.min.css'/>"
          rel="stylesheet">
    <link rel="stylesheet"
          href="<c:url value='/decorator/admin/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css'/>">
    <!-- Custom CSS -->

    <link href="<c:url value='/decorator/admin/css/style.css'/>" rel="stylesheet">
    <link href="<c:url value='/decorator/admin/css/style.min.css'/>" rel="stylesheet">

    <%--    <link href="/css/admin/css/style.css" rel="stylesheet">--%>
    <%--    <link href="/css/admin/css/style.min.css" rel="stylesheet">--%>

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css"
          integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css"
          integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymous"/>
</head>
<%--<body>sdfghmmngb</body>--%>

<body>
<%@include file="header.jsp"%>
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.html">Trang chủ</a>
                    <i>|</i>
                </li>
                <li>${d.ten_san_pham}</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->


<!-- Single Page -->
<div class="banner-bootom-w3-agileits py-5">
    <div class="container py-xl-4 py-lg-2">
        <!-- tittle heading -->

        <!-- //tittle heading -->
        <div class="row">
            <div class="col-lg-5 col-md-8 single-right-left ">
                <div class="grid images_3_of_2">
                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="${d.hinh_mo_ta_1}">
                                <div class="thumb-image">
                                    <img src="${d.hinh_mo_ta_2}" data-imagezoom="true" class="img-fluid" alt=""> </div>
                            </li>
                            <li data-thumb="${d.hinh_mo_ta_1}">
                                <div class="thumb-image">
                                    <img src="${d.hinh_mo_ta_1}" data-imagezoom="true" class="img-fluid" alt=""> </div>
                            </li>
                            <li data-thumb="${d.hinh_mo_ta_1}">
                                <div class="thumb-image">
                                    <img src="${d.hinh_mo_ta_1}" data-imagezoom="true" class="img-fluid" alt=""> </div>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 single-right-left simpleCart_shelfItem">
                <h3 class="mb-3">${d.ten_san_pham}</h3>
                <p class="mb-3">
                    <span class="item_price">${d.gia}</span>
                    <!-- <del class="mx-2 font-weight-light">1 đồng </del> -->
                    <label>Miễn phí vẫn chuyển</label>
                </p>

                <form>
                    <div class="single-infoagile">
                        <form>
                            <label class="container">6GB/128GB
                                <input type="radio" id="buttonsize1" name="check1" value="">
                            </label>

                            <label class="container">6GB/128GB
                                <input type="radio" id="buttonsize2" name="check1" value="">
                            </label>
                        </form>
                    </div>
                </form>
                <div class="product-single-w3l">
                    <aside class="product-single-w3l1">
                        <b>
                            <i>
                                Khuyến mãi
                            </i>
                        </b>

                        <ul>
                            <li class="mb-1">
                                Pin sạc dự phòng giảm 30% khi mua kèm.
                            </li>
                            <li class="mb-1">
                                GIẢM ngay 500,000đ khi mua Microsoft Home & Student 2019 chỉ còn 1,790,000đ
                            </li>
                            <li class="mb-1">
                                Tặng 800.000₫ mua hàng tại website thành viên
                            </li>
                            <!-- <li class="mb-1">
                                3300 mAh Battery
                            </li>
                            <li class="mb-1">
                                Exynos 7870 Octa Core 1.6GHz Processor
                            </li> -->
                        </ul>
                    </aside>
                </div>

                <div class="single-infoagile11">
                    <h5><b><i> Màu sắc</i></b></h5>
                    <%--                    <label class="container">${d.mau}--%>
                    <%--                        <input type="radio" checked="checked" name="check2">--%>
                    <%--                        <span class="checkmark"></span>--%>
                    <%--                    </label>--%>
                    <label class="container">Trắng
                        <input type="radio"  name="check2">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Xanh
                        <input type="radio"  name="check2">
                        <span class="checkmark"></span>
                    </label>
                </div>
                <div>
                    <p class="my-sm-4 my-3">
                        <i class="fas fa-retweet mr-3"></i>Net banking & Credit/ Debit/ ATM Cards
                    </p>
                </div>
                <div class="occasion-cart">
                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                        <form action="#" method="post">
                            <fieldset>
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="business" value=" " />
                                <input type="hidden" name="item_name" value="${d.ten_san_pham}" />
                                <input type="hidden" name="amount" value="${d.gia}" />
                                <input type="hidden" name="discount_amount" value="1.00" />
                                <input type="hidden" name="currency_code" value="đ" />
                                <input type="hidden" name="return" value=" " />
                                <input type="hidden" name="cancel_return" value=" " />
                                <input type="submit" name="submit" value="Add to cart" class="button" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-7 col-lg-7 aos-init aos-animate" data-aos="fade-right">
                <h5><b><i>Mô tả sản phẩm</i></b></h5>
                <p>${d.mo_ta_1}
                </p> <img src="images/macbook/macbook13/Macbook12.2.jpg" >
                <p>${d.ten_san_pham} – những tính năng nổi bật</p>
                <p>1. Máy hoạt động với hiệu năng ấn tượng</p>
                <p>${d.mo_ta_2}</p>
                <p>2. Hiệu năng cực mạnh</p>
                <!-- phần nhấn để hiện thị display bị mất -->

            </div>
            <div class="col-xl-5 col-lg-5 pt-5 pt-lg-0">
                <div class="lt-table-box technical-info" id="id_21547" style="margin-top: 0px;">
                    <div class="header">
                        <h2 style="font-size: 15px;font-weight: bold;line-height: 50px;">Thông số kỹ thuật</h2>
                    </div>
                    <div class="content">
                        <table id="tskt">


                            <tbody>
                            <tr style="display: table-row;">
                                <td>Màn hình</td>
                                <td>${d.man_hinh}</td>
                            </tr>


                            <tr style="display: table-row;">
                                <td>Kích thước màn hình:</td>
                                <td>${d.kich_thuoc_man_hinh}</td>
                            </tr>


                            <tr style="display: table-row;">
                                <td>Hệ điều hành:</td>
                                <td>${d.he_dieu_hanh}</td>
                            </tr>


                            <tr style="display: table-row;">
                                <td>C:</td>
                                <td>${d.cpu}
                                </td>
                            </tr>


                            <tr style="display: table-row;">
                                <td>Camera trước</td>
                                <td>${d.camera_truoc}</td>
                            </tr>

                            <tr style="display: table-row;">
                                <td>Camera sau:</td>
                                <td>Camera_sau</td>
                            </tr>


                            <tr style="display: table-row;">
                                <td>Bộ nhớ:</td>
                                <td>${d.bo_nho}</td>
                            </tr>

                            <tr style="display: table-row;">
                                <td>Ram:</td>
                                <td>${d.ram}</td>
                            </tr>

                            <tr style="display: table-row;">
                                <td>Thẻ SIM</td>
                                <td>${d.the_sim}</td>
                            </tr>


                            <tr style="display: table-row;">
                                <td>Pin:</td>
                                <td>${d.pin}</td>
                            </tr>
                            </tbody></table>

                    </div>
                </div>
                <!-- <button class="buttontable"><p><b>Xem thêm</b></p></button> -->
            </div>
            <div class="fs-dtrt-row clearfix">
                <div class="fs-dtrt-col fs-dtrt-c1">
                    <h5>3,6/5</h5>
                    <ul class="fs-dtrtbig">
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span ><i class="far fa-star"></i></span></li>
                        <li><span ><i class="far fa-star"></i></span></li>
                    </ul><br>
                    <p>30 đánh giá </p>
                </div>
                <div class="fs-dtrt-col fs-dtrt-c2">

                    <section id="skills" class="skills">
                        <div class="container">

                            <div class="row skills-content">
                                <div class="progress">
                                    <span class="skill">1 sao <i class="val">0%</i></span>
                                    <div class="progress-bar-wrap">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
                                    </div>
                                </div>

                                <div class="progress">
                                    <span class="skill">2 sao <i class="val">5%</i></span>
                                    <div class="progress-bar-wrap">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 5%;"></div>
                                    </div>
                                </div>
                                <div class="progress">
                                    <span class="skill">3 sao <i class="val">5%</i></span>
                                    <div class="progress-bar-wrap">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%;"></div>
                                    </div>
                                </div>
                                <div class="progress">
                                    <span class="skill">4 sao <i class="val">10%</i></span>
                                    <div class="progress-bar-wrap">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%;"></div>
                                    </div>
                                </div>

                                <div class="progress">
                                    <span class="skill">5 sao <i class="val">80%</i></span>
                                    <div class="progress-bar-wrap">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </section>
                </div>


                <div class="fs-dtrt-col fs-dtrt-c3"> <input type="text" id="name-rate" name="name-rate" placeholder="Họ và tên" value="" class="form-control mb">
                    <input type="text" id="email-rate" name="email_rate" placeholder="Email" value="" class="form-control">
                    <textarea class="form-control" id="full_rate" placeholder="Nhập đánh giá và bình luận về sản phẩm " rows="6" name="full_rate"></textarea>
                    <input type="button" class="button submitbt" value="Gửi đánh giá" id="submitbt">
                </div>

            </div>
            <div class="danhgiasanpham">
                <h5><b><i>Nhận xét từ khách hàng:</i></b></h5>
                <div class="thongtinkhachhang">
                    <h6><i>Nguyễn Văn A |</i></h6>
                    <ul class="fs-dtrtbig">
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span> </li>
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="far fa-star"></i></span></li>
                    </ul>
                    <p>Chất lượng sản phẩm tốt. Đáng đễ căng nhắc</p>
                </div>
                <div class="thongtinkhachhang">
                    <h6><i>Trần Văn Bành |</i></h6>
                    <ul class="fs-dtrtbig">
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span> </li>
                        <li><span><i class="fas fa-star"></i></span></li>
                        <li><span><i class="fas fa-star"></i></span></li>
                    </ul>
                    <p>hàng OK, giá ưu đãi. nv nhiệt tình, thủ tục nhanh gọn.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Single Page -->
<%@include file="footer.jsp"%>

<!-- ============================================================== -->
<script src="<c:url value='/decorator/admin/plugins/bower_components/jquery/dist/jquery.min.js'/>"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="<c:url value='/decorator/admin/plugins/bower_components/popper.js/dist/umd/popper.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/js/app-style-switcher.js'/>"></script>
<!--Wave Effects -->
<script src="/decorator/admin/js/waves.js"></script>
<!--Menu sidebar -->
<script src="<c:url value='/decorator/admin/js/sidebarmenu.js'/>"></script>
<!--Custom JavaScript -->
<script src="<c:url value='/decorator/admin/js/custom.js'/>"></script>

<!-- js-files -->
<!-- jquery -->
<script src="<c:url value='/decorator/web/js/jquery-2.2.3.min.js'/>"></script>
<!-- //jquery -->

<!-- nav smooth scroll -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //nav smooth scroll -->

<!-- popup modal (for location)-->
<script src="<c:url value='/decorator/web/js/jquery.magnific-popup.js'/>"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- //popup modal (for location)-->

<!-- cart-js -->
<script src="<c:url value='/decorator/web/js/minicart.js'/>"></script>
<script>
    paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

    paypals.minicarts.cart.on('checkout', function (evt) {
        var items = this.items(),
            len = items.length,
            total = 0,
            i;

        // Count the number of each item in the cart
        for (i = 0; i < len; i++) {
            total += items[i].get('quantity');
        }

        if (total < 3) {
            alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
            evt.preventDefault();
        }
    });
</script>
<!-- //cart-js -->

<!-- password-script -->
<script>
    window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }
</script>
<!-- //password-script -->

<!-- quantity -->
<script>
    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) + 1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) - 1;
        if (newVal >= 1) divUpd.text(newVal);
    });
</script>


<!--quantity-->
<script>
    $(document).ready(function (c) {
        $('.close1').on('click', function (c) {
            $('.rem1').fadeOut('slow', function (c) {
                $('.rem1').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close2').on('click', function (c) {
            $('.rem2').fadeOut('slow', function (c) {
                $('.rem2').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close3').on('click', function (c) {
            $('.rem3').fadeOut('slow', function (c) {
                $('.rem3').remove();
            });
        });
    });
</script>
<!-- //quantity -->

<!-- smoothscroll -->
<script src="<c:url value='/decorator/web/js/SmoothScroll.min.js'/>"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- for bootstrap working -->
<script src="<c:url value='/decorator/web/js/bootstrap.js'/>"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->
</body>
</html>