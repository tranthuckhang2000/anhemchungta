<%--
  Created by IntelliJ IDEA.
  User: khangtran
  Date: 15/01/2021
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>
    <title>Cellphones</title>
    <!-- Meta tag Keywords -->
    <link rel="shortcut icon" type="image/png" href="<c:url value='/images/favicon.png'/>"/>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords"
          content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>

</head>

<body>
<%@include file="header.jsp" %>
<!-- banner -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <!-- Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item item1 active">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p>Hoàn Tiền Lên Đến
                            <span>10%</span></p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">Iphone
                            <span>Giá </span>
                            Tốt
                        </h3>
                        <a class="button2" href="iphone.jsp">Mua Ngay </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item item2">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p>Nâng Cao
                            <span>Hiệu Suất</span> Hoạt Động</p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">Siêu Máy Tính
                            <span>Macbook Pro</span>
                        </h3>
                        <a class="button2" href="iphone.jsp">Mua Ngay </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item item3">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p>Hoàn Tiền
                            <span>Lên Đến 10%</span></p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">Tiêu Chuẩn
                            <span>Mới</span>
                        </h3>
                        <a class="button2" href="../../macbook.html">Mua Ngay</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item item4">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p>Nhận Ngay
                            <span>Phiếu Giảm Giá 10%</span></p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">Ngay Trong
                            <span>Hôm Nay</span>
                        </h3>
                        <a class="button2" href="../../macbook13.6.html">Mua Ngay </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- //banner -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="yyy.html">Trang Chủ</a>
                    <i>|</i>
                </li>
                <li>Thanh Toán</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- payment page-->
<div class="privacy py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
        <!-- tittle heading -->
        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
            <span>T</span>hanh <span>T</span>oán</h3>
        <!-- //tittle heading -->
        <div class="checkout-right">
            <!--Horizontal Tab-->
            <div id="parentHorizontalTab">
                <ul class="width-ck resp-tabs-list hor_1">
                    <li>Thanh Toán Khi Nhận Hàng</li>
                    <li>Credit/Debit</li>
                    <li>Net Banking</li>
                    <li>Tài Khoản Paypal</li>
                </ul>
                <div class="resp-tabs-container hor_1">

                    <div>
                        <div class="vertical_post check_box_agile">
                            <h5>COD</h5>
                            <div class="checkbox">
                                <div class="check_box_one cashon_delivery">
                                    <label class="anim">
                                        <input type="checkbox" class="checkbox">
                                        <span>Tôi đã đọc kỹ điều khoản, những chính sách và chấp nhận theo những quy định đó</span>
                                    </label>
                                </div>
                                <button class="btn-pay">
                                    <span>Thanh Toán Và Đặt Hàng </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div>




                        <form action="#" method="post" class="creditly-card-form agileinfo_form">
                            <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                                <div class="credit-card-wrapper">
                                    <div class="first-row form-group">
                                        <div class="controls">
                                            <label class="control-label">Tên Trên Thẻ</label>
                                            <input class="billing-address-name form-control" type="text" name="name" placeholder="Nhập vào đây">
                                        </div>
                                        <div class="w3_agileits_card_number_grids my-3">
                                            <div class="w3_agileits_card_number_grid_left">
                                                <div class="controls">
                                                    <label class="control-label">Số Thẻ</label>
                                                    <input class="number credit-card-number form-control" type="text" name="number" inputmode="numeric" autocomplete="cc-number"
                                                           autocompletetype="cc-number" x-autocompletetype="cc-number" placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
                                                </div>
                                            </div>
                                            <div class="w3_agileits_card_number_grid_right mt-2">
                                                <div class="controls">
                                                    <label class="control-label">CVV</label>
                                                    <input class="security-code form-control" Â· inputmode="numeric" type="text" name="security-code" placeholder="&#149;&#149;&#149;">
                                                </div>
                                            </div>
                                            <div class="clear"> </div>
                                        </div>
                                        <div class="controls">
                                            <label class="control-label">Ngày Phát Hành</label>
                                            <input class="expiration-month-and-year form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
                                        </div>
                                    </div>
                                    <button class="submit mt-3">
                                        <span>Thanh Toán Và Đặt Hàng </span>
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                    <div>
                        <div class="vertical_post">
                            <form action="#" method="post">
                                <h5>Chọn Loại Thẻ</h5>
                                <div class="swit-radio">
                                    <div class="check_box_one">
                                        <div class="radio_one">
                                            <label>
                                                <input type="radio" name="radio" checked="">
                                                <i></i>Thẻ tín dụng</label>
                                        </div>
                                    </div>
                                    <div class="check_box_one">
                                        <div class="radio_one">
                                            <label>
                                                <input type="radio" name="radio">
                                                <i></i>Thẻ ghi nợ</label>
                                        </div>
                                    </div>
                                    <div class="check_box_one">
                                        <div class="radio_one">
                                            <label>
                                                <input type="radio" name="radio">
                                                <i></i>Thẻ trả trước</label>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                                <h5>Chọn ngân hàng</h5>
                                <div class="section_room_pay">
                                    <select class="year">
                                        <option value="">=== Other Banks ===</option>
                                        <option value="ALB-NA">Allahabad Bank NetBanking</option>
                                        <option value="ADB-NA">Andhra Bank</option>
                                        <option value="BBK-NA">Bank of Bahrain and Kuwait NetBanking</option>
                                        <option value="BBC-NA">Bank of Baroda Corporate NetBanking</option>
                                        <option value="BBR-NA">Bank of Baroda Retail NetBanking</option>
                                        <option value="BOI-NA">Bank of India NetBanking</option>
                                        <option value="BOM-NA">Bank of Maharashtra NetBanking</option>
                                        <option value="CSB-NA">Catholic Syrian Bank NetBanking</option>
                                        <option value="CBI-NA">Central Bank of India</option>
                                        <option value="CUB-NA">City Union Bank NetBanking</option>
                                        <option value="CRP-NA">Corporation Bank</option>
                                        <option value="DBK-NA">Deutsche Bank NetBanking</option>
                                        <option value="DCB-NA">Development Credit Bank</option>
                                        <option value="DC2-NA">Development Credit Bank - Corporate</option>
                                        <option value="DLB-NA">Dhanlaxmi Bank NetBanking</option>
                                        <option value="FBK-NA">Federal Bank NetBanking</option>
                                        <option value="IDS-NA">Indusind Bank NetBanking</option>
                                        <option value="IOB-NA">Indian Overseas Bank</option>
                                        <option value="ING-NA">ING Vysya Bank (now Kotak)</option>
                                        <option value="JKB-NA">Jammu and Kashmir NetBanking</option>
                                        <option value="JSB-NA">Janata Sahakari Bank Limited</option>
                                        <option value="KBL-NA">Karnataka Bank NetBanking</option>
                                        <option value="KVB-NA">Karur Vysya Bank NetBanking</option>
                                        <option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option>
                                        <option value="OBC-NA">Oriental Bank of Commerce NetBanking</option>
                                        <option value="CPN-NA">PNB Corporate NetBanking</option>
                                        <option value="PNB-NA">PNB NetBanking</option>
                                        <option value="RSD-DIRECT">Rajasthan State Co-operative Bank-Debit Card</option>
                                        <option value="RBS-NA">RBS (The Royal Bank of Scotland)</option>
                                        <option value="SWB-NA">Saraswat Bank NetBanking</option>
                                        <option value="SBJ-NA">SB Bikaner and Jaipur NetBanking</option>
                                        <option value="SBH-NA">SB Hyderabad NetBanking</option>
                                        <option value="SBM-NA">SB Mysore NetBanking</option>
                                        <option value="SBT-NA">SB Travancore NetBanking</option>
                                        <option value="SVC-NA">Shamrao Vitthal Co-operative Bank</option>
                                        <option value="SIB-NA">South Indian Bank NetBanking</option>
                                        <option value="SBP-NA">State Bank of Patiala NetBanking</option>
                                        <option value="SYD-NA">Syndicate Bank NetBanking</option>
                                        <option value="TNC-NA">Tamil Nadu State Co-operative Bank NetBanking</option>
                                        <option value="UCO-NA">UCO Bank NetBanking</option>
                                        <option value="UBI-NA">Union Bank NetBanking</option>
                                        <option value="UNI-NA">United Bank of India NetBanking</option>
                                        <option value="VJB-NA">Vijaya Bank NetBanking</option>
                                    </select>
                                </div>
                                <input type="submit" value="Thanh Toán Và Đặt Hàng">
                            </form>
                        </div>
                    </div>
                    <div>
                        <div id="tab4" class="tab-grid" style="display: block;">
                            <div class="row">
                                <div class="col-md-6 pay-forms">
                                    <img class="pp-img" src="images/paypal.png" alt="Image Alternative text" title="Image Title">
                                    <p>Quan trọng: Bạn sẽ được chuyển hướng đến trang web của PayPal để hoàn tất thanh toán của mình một cách an toàn.</p>
                                    <a class="btn btn-primary">Tiến hành thanh toán với Paypal</a>
                                </div>
                                <div class="col-md-6 number-paymk">
                                    <form action="#" method="post" class="creditly-card-form-2 shopf-sear-headinfo_form">
                                        <section class="creditly-wrapper payf_wrapper">
                                            <div class="credit-card-wrapper">
                                                <div class="first-row form-group">
                                                    <div class="controls">
                                                        <label class="control-label">Tên Chủ Thẻ </label>
                                                        <input class="billing-address-name form-control" type="text" name="name" placeholder="John Smith">
                                                    </div>
                                                    <div class="paymntf_card_number_grids my-2">
                                                        <div class="fpay_card_number_grid_left">
                                                            <div class="controls">
                                                                <label class="control-label">Số Thẻ</label>
                                                                <input class="number credit-card-number-2 form-control" type="text" name="number" inputmode="numeric" autocomplete="cc-number"
                                                                       autocompletetype="cc-number" x-autocompletetype="cc-number" placeholder="•••• •••• •••• ••••">
                                                            </div>
                                                        </div>
                                                        <div class="fpay_card_number_grid_right mt-2">
                                                            <div class="controls">
                                                                <label class="control-label">CVV</label>
                                                                <input class="security-code-2 form-control" Â·="" inputmode="numeric" type="text" name="security-code" placeholder="•••">
                                                            </div>
                                                        </div>
                                                        <div class="clear"> </div>
                                                    </div>
                                                    <div class="controls">
                                                        <label class="control-label">Ngày Phát Hành</label>
                                                        <input class="expiration-month-and-year-2 form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
                                                    </div>
                                                </div>
                                                <input class="submit" type="submit" value="Thanh Toán Và Đặt Hàng">
                                            </div>
                                        </section>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Plug-in Initialisation-->
        </div>
    </div>
</div>
<!-- //payment page -->


<!-- middle section -->
<div class="join-w3l1 py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
    </div>
</div>
<!-- middle section -->

<!-- footer -->
<%@include file="footer.jsp" %>
-->


</body>

</html>
