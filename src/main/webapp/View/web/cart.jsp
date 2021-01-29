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
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="Home">Trang chủ</a>
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
                <span>${cart.count()} &nbsp;sản phẩm</span>
            </h4>
            <div class="row">
                <div class="col-md-12">
                    <div class="white-box">
                        <div class="checkout-right">

                            <div class="table-responsive mg-elm">
                                <table class="timetable_sub">
                                    <thead>
                                    <tr>
                                        <th>Sản Phẩm</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Số Lượng</th>
                                        <th>Giá</th>
                                        <th>Xóa</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${cart.data()}" var="d">
                                        <tr class="rem1">
                                            <td class="invert-image">
                                                <a href="#">
                                                    <img src="${d.hinh_mo_ta_1}" alt=" "
                                                         class="img-responsive">
                                                </a>
                                            </td>
                                            <td class="invert">${d.ten_san_pham}</td>
                                            <td class="invert">
                                                <div class="quantity">
                                                    <div class="quantity-select">
                                                        <span>${d.so_luong}</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="invert">${d.gia}<u>đ</u></td>
                                            </td>
                                                <%--                                            <td class="invert"><i  class="fas fa-edit"></i>--%>
                                                <%--                                            </td>--%>
                                            <td class="invert">
                                                <div class="rem">
                                                    <a href="DetailDelete?idProduct=${d.masp}" style="color: gray">
                                                        <i style="font-size: 30px" class="fas fa-trash-alt"></i></a>
                                                </div>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <h4 class="mb-sm-4 mb-3">Tổng Thanh Toán: &nbsp; ${cart.total()} </h4>

                                </table>
                                <div class="mg-elm">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="checkout-left">
            <div class="address_form_agile mt-sm-5 mt-4">
                <h4 class="mb-sm-4 mb-3">Thêm thông tin</h4>
                <form action="Pay" method="post" class="creditly-card-form agileinfo_form">
                    <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                        <div class="information-wrapper">
                            <div class="first-row">
                                <div class="w3_agileits_card_number_grids">
                                    <div class="w3_agileits_card_number_grid_left form-group">
                                        <div class="controls">
                                            <input type="text" class="form-control" placeholder="Số điện thoại..."
                                                   name="sdt" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="controls form-group">
                                    <input type="text" class="form-control" placeholder="Địa chỉ" name="dia_chi" required="">
                                </div>

                                <div class="controls form-group">
                                    <input class="form-control" type="radio" id="cod" name="thanh_toan" value="tt1001">
                                    <label class="form-control" for="cod">Ship COD</label><br>
                                    <input class="form-control" type="radio" id="atm" name="thanh_toan" value="tt1002">
                                    <label class="form-control" for="atm">Chuyển khoảng</label><br></div>
                            </div>
                            <button class="submit check_out btn">Đặt Hàng</button>
                        </div>
                    </div>
                </form>
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
