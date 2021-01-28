<%--
  Created by IntelliJ IDEA.
  User: khangtran
  Date: 14/01/2021
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Đăng Nhập</title>
    <!-- Meta tag Keywords -->
<%--    <link rel="shortcut icon" type="image/png" href="<c:url value='/images/favicon.png'/>"/>--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords"
          content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>

    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
          rel="stylesheet">
    <!-- //web fonts -->

</head>

<body>
<%@ include file="header.jsp" %>
<p class="text-danger">${mess}</p>

<!--page-->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="/">Trang chủ</a>
                    <i>|</i>
                </li>
                <li>đăng nhập</li>
            </ul>
        </div>
    </div>
</div>
<!--//page-->
<div class="login-page">
    <div class="form">

        <form class="login-form" method="post" action="login">
            <h3>Đăng Nhập</h3>
            <h1>${mess}</h1>
            <input  type="text" id="ten_dang_nhap" name="ten_dang_nhap" placeholder="Tên đăng nhập"/>
            <input type="password" id="mat_khau" name="mat_khau" placeholder="Mật khẩu"/>
            <button type="submit">Đăng nhập</button>
            <p class="message"><a href="">Bạn không nhớ mật khẩu ? </a></p>
            <p class="message">Bạn mới biết CellApples? <a href="logup">Đăng ký</a></p>
        </form>
    </div>
</div>

<%@include file="footer.jsp" %>

</body>

</html>