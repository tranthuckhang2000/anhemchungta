<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Cellphones</title>
    <link rel="shortcut icon" type="image/png" href="<c:url value='/images/favicon.png'/>"/>

    <!-- Meta tag Keywords -->
</head>

<body>

<%@ include file="header.jsp" %>
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="../../index.html">Trang chủ</a>
                    <i>|</i>
                </li>
                <li>iphone</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->


<!-- top Products -->
<div class="ads-grid py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
        <div class="row">
            <!-- product left -->
            <div class="agileinfo-ads-display col-lg-9">
                <div class="wrapper">
                    <!-- first section -->
                    <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">

                        <div class="row row-center" id="row-centermacbook" >

                            <c:forEach items="${data}" var="d">
                                <div class="col-md-4-5 product-men mt-5">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item text-center">
                                            <img class="img-size-pro" src="${d.hinh_mo_ta_1}"alt="">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="Product_Detail?idProduct=${d.masp}" class="link-product-add-cart">Xem Nhanh</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">Hot</span>
                                        </div>
                                        <div class="item-info-product text-center border-top mt-4">
                                            <h4 class="pt-1">
                                                <a href="../../macbook13.6.html">${d.ten_san_pham}</a>
                                            </h4>
                                            <div class="info-product-price my-2">
                                                <span class="item_price">${d.gia}</span>
                                                <del>${d.gia_khuyen_mai}</del>
                                            </div>
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                <form action="AddToCart" method="post">
                                                    <fieldset>
                                                        <input type="hidden" name="item_name" value="${d.ten_san_pham}" />
                                                        <input type="hidden" name="masp" value="${d.masp}" />
                                                        <input type="hidden" name="amount" value="${d.gia}.toLocaleString()" />
<%--                                                        <a href="?idProduct=${d.masp}" class="link-product-add-cart">Xem Nhanh</a>--%>
<%--                                                        <button type="submit" class="btn button">Them Vqo Gio Hang</button>--%>
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
                </div>
            </div>
        </div>

    </div>
</div>

</div>

<!-- //top products -->

<%@ include file="footer2.jsp" %>

<script>
    function formatVND(element) {
        return new Intl.NumberFormat('vi-VN', {
            style: 'currency',
            currency: 'VND'
        }).format(element);
    }

    let arrayprice = document.getElementsByClassName("item_price");
    for (let i = 0; i < arrayprice.length; i++)
        arrayprice[i].innerHTML = formatVND(arrayprice[i].innerHTML)

    let arraydiscount = document.getElementsByClassName("item_discount");
    for (let i = 0; i < arraydiscount.length; i++) {
        arraydiscount[i].innerHTML = Number.parseFloat(arraydiscount[i].innerHTML).toFixed(0);
        arraydiscount[i].innerHTML = formatVND(arraydiscount[i].innerHTML)
    }
</script>
</body>

</html>