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

<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="yyy.html">Trang chủ</a>
                    <i>|</i>
                </li>
                <li>Giỏ hàng</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
        <!-- tittle heading -->
        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
            <span>G</span>iỏ
            <span>H</span>àng

        </h3>
        <!-- //tittle heading -->
        <div class="checkout-right">
            <h4 class="mb-sm-4 mb-3">Đơn hàng của bạn:
                <span>3 sản phẩm</span>
            </h4>
            <div class="table-responsive">
                <table class="timetable_sub">
                    <thead>
                    <tr>
                        <th>STT.</th>
                        <th>Sản Phẩm</th>
                        <th>Số Lượng</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Giá</th>
                        <th>Xóa</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="rem1">
                        <td class="invert">1</td>
                        <td class="invert-image">
                            <a href="macbook13.6.html">
                                <img src="images/iphone/iphone_7/iphone-7-silver.jpg" alt=" " class="img-responsive">
                            </a>
                        </td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value">
                                        <span>1</span>
                                    </div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert">iphone 7 32GB Silver</td>
                        <td class="invert">5.590.00<u>đ</u></td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close1"> </div>
                            </div>
                        </td>
                    </tr>
                    <tr class="rem2">
                        <td class="invert">2</td>
                        <td class="invert-image">
                            <a href="macbook13.6.html">
                                <img src="images/macbook/macbook13/macbook5.3.jpg" alt=" " class="img-responsive">
                            </a>
                        </td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value">
                                        <span>1</span>
                                    </div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert">Macbook pro 13inch</td>
                        <td class="invert">32.990.000<u>đ</u></td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close2"> </div>
                            </div>
                        </td>
                    </tr>
                    <tr class="rem3">
                        <td class="invert">3</td>
                        <td class="invert-image">
                            <a href="macbook13.6.html">
                                <img src="images/ipad/iPad%20Air%201%20Wifi%20Cellular/ipad-air-1-silver.jpg" alt=" " class="img-responsive">
                            </a>
                        </td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value">
                                        <span>1</span>
                                    </div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert">ipad air 2</td>
                        <td class="invert">4.990.000<u>đ</u></td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close3"> </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="checkout-left">
            <div class="address_form_agile mt-sm-5 mt-4">
                <h4 class="mb-sm-4 mb-3">Thêm thông tin</h4>
                <form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
                    <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                        <div class="information-wrapper">
                            <div class="first-row">
                                <div class="controls form-group">
                                    <input class="billing-address-name form-control" type="text" name="name" placeholder="Tên đầy đủ..." required="">
                                </div>
                                <div class="w3_agileits_card_number_grids">
                                    <div class="w3_agileits_card_number_grid_left form-group">
                                        <div class="controls">
                                            <input type="text" class="form-control" placeholder="Số điện thoại..." name="number" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="controls form-group">
                                    <input type="text" class="form-control" placeholder="Thị xã" name="town" required="">
                                </div>
                                <div class="controls form-group">
                                    <input type="text" class="form-control" placeholder="Quận/Huyện" name="district" required="">
                                </div>
                                <div class="controls form-group">
                                    <input type="text" class="form-control" placeholder="Tỉnh/Thành phố" name="city" required="">
                                </div>
                                <div class="controls form-group">
                                    <select class="option-w3ls">
                                        <option>Chọn loại địa chỉ</option>
                                        <option>Công ty</option>
                                        <option>Nhà ở</option>
                                        <!--											<option>Commercial</option>-->

                                    </select>
                                </div>
                            </div>
                            <button class="submit check_out btn">Giao hàng đến địa chỉ này</button>
                        </div>
                    </div>
                </form>
                <div class="checkout-right-basket">
                    <a href="payment.html">Tiến hành thanh toán
                        <span class="far fa-hand-point-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>



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
