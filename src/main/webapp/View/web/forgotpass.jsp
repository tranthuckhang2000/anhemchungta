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
					<a href="yyy.html">Trang chủ</a>
					<i>|</i>
				</li>
				<li>giới thiệu</li>
			</ul>
		</div>
	</div>
</div>
<!-- //page -->

<div class="login-page">
	<div class="form">
		<form class="forgotpass" action="UserVerity" method="post">
			<h4>Quên mật khẩu ?</h4>
			<p>Vui lòng cung cấp email để lấy lại mật khẩu .</p>
			<input type="text" name="username" placeholder="Tên đăng nhập"/>
			<input type="text" name="email" placeholder="Địa chỉ email"/>
			<button type="submit">Gửi</button>
			<a class="nav-link" href="login.html">Hủy</a>
		</form>
		<!-- <form class="register-form">
           <h3>Đăng ký</h3>
          <input type="text" placeholder="Tên tài khoản"/>
          <input type="password" placeholder="Mật khẩu"/>
          <input type="password" placeholder="Nhập lại mật khẩu"/>
          <input type="text" placeholder="Địa chỉ email"/>
          <button>Đăng ký</button>
          <div class="registerdiff" >
              <img class="img-register" src="images/google (1).png"/>
              <img class="img-register" src="images/facebook.png"/>
          </div>
          <p class="message">Bạn đã là thành viên ?</p> <a href="login.html">Đăng nhập </a></p>
        </form> -->
		<!-- <form class="login-form">
          <h3>Đăng nhập</h3>
          <input type="text" placeholder="username"/>
          <input type="password" placeholder="password"/>
          <button>login</button>
          <p class="message">Not registered? <a href="#">Create an account</a></p>
        </form> -->
	</div>
</div>

<%@include file="footer.jsp" %>

</body>

</html>