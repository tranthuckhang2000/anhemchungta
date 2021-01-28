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

<!-- top Products -->
<div class="ads-grid py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
        <!-- tittle heading -->
        <!--			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">-->
        <!--				<span>S</span>ản-->
        <!--				<span>P</span>hẩm-->
        <!--				<span>M</span>ới</h3>-->
        <!-- //tittle heading -->
        <div class="row">
            <!-- product left -->
            <div class="agileinfo-ads-display col-lg-9">
                <div class="wrapper">
                    <!-- san pham moi ra mắt-->
                    <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                        <h3 class="heading-tittle text-center font-italic">Sản Phẩm Mới Ra Mắt</h3>
                        <div class="row row-center">
                            <c:forEach items="${new_product}" var="d">
                                <div class="col-md-4-5 product-men mt-5">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item text-center">
                                            <img class="img-size-pro" src="${d.hinh_mo_ta_1}"alt="">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="Product_Detail?idProduct=${d.masp}" class="link-product-add-cart">Xem Nhanh</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">Mới</span>
                                        </div>
                                        <div class="item-info-product text-center border-top mt-4">
                                            <h4 class="pt-1">
                                                <a href="../../macbook13.6.html">${d.ten_san_pham}</a>
                                            </h4>
                                            <div class="info-product-price my-2">
                                                <span class="item_price">${d.gia}<u>đ</u></span>
                                                <del>${d.gia_khuyen_mai}</del>
                                            </div>
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                <form action="#" method="post">
                                                    <fieldset>
                                                        <input type="hidden" name="cmd" value="_cart" />
                                                        <input type="hidden" name="add" value="1" />
                                                        <input type="hidden" name="business" value=" " />
                                                        <input type="hidden" name="item_name" value="${d.ten_san_pham}" />
                                                        <input type="hidden" name="amount" value="${d.gia}.toLocaleString()" />
                                                        <input type="hidden" name="discount_amount" value="1.00" />
                                                        <input type="hidden" name="currency_code" value="đ" />
                                                        <input type="hidden" name="return" value=" " />
                                                        <input type="hidden" name="cancel_return" value=" " />
                                                        <input type="submit" name="submit" value="Thêm Vào Giỏ Hàng" class="button btn" />
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- //san pham moi ra mat -->


                    <!-- san pham gia tot -->
                    <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                        <h3 class="heading-tittle text-center font-italic">Sản Phẩm Giá Tốt</h3>
                        <div class="row row-center">
                            <c:forEach items="${best_price_product}" var="d">
                                <div class="col-md-4-5 product-men mt-5">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item text-center">
                                            <img class="img-size-pro" src="${d.hinh_mo_ta_1}"alt="">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="Product_Detail?idProduct=${d.masp}" class="link-product-add-cart">Xem Nhanh</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">Giá Tốt</span>
                                        </div>
                                        <div class="item-info-product text-center border-top mt-4">
                                            <h4 class="pt-1">
                                                <a href="../../macbook13.6.html">${d.ten_san_pham}</a>
                                            </h4>
                                            <div class="info-product-price my-2">
                                                <span class="item_price">${d.gia}<u>đ</u></span>
                                                <del>${d.gia_khuyen_mai}</del>
                                            </div>
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                <form action="#" method="post">
                                                    <fieldset>
                                                        <input type="hidden" name="cmd" value="_cart" />
                                                        <input type="hidden" name="add" value="1" />
                                                        <input type="hidden" name="business" value=" " />
                                                        <input type="hidden" name="item_name" value="${d.ten_san_pham}" />
                                                        <input type="hidden" name="amount" value="${d.gia}.toLocaleString()" />
                                                        <input type="hidden" name="discount_amount" value="1.00" />
                                                        <input type="hidden" name="currency_code" value="đ" />
                                                        <input type="hidden" name="return" value=" " />
                                                        <input type="hidden" name="cancel_return" value=" " />
                                                        <input type="submit" name="submit" value="Thêm Vào Giỏ Hàng" class="button btn" />
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- //san pham gia tot -->

                </div>
            </div>
            <!-- //product left -->
        </div>
    </div>
</div>
<!-- //top products -->

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
