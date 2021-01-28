<%--
  Created by IntelliJ IDEA.
  User: khangtran
  Date: 05/01/2021
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>
<%--    <link rel="shortcut icon" type="image/png" href="/images/favicon.png"/>--%>
    <link rel="shortcut icon" type="image/png" href="<c:url value='/images/favicon.png'/>"/>

</head>

<body>
<header class="topbar" data-navbarbg="skin5">
    <nav style="background-color: #FFFFFF" class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header" data-logobg="skin6">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <a class="navbar-brand" href="yyy.html">
                <!-- Logo icon -->
                <!--                        <b class="logo-icon">-->
                <!--                            &lt;!&ndash; Dark Logo icon &ndash;&gt;-->
                <!--                            <img src="plugins/images/logo-icon.png" alt="homepage" />-->
                <!--                        </b>-->
                <!--End Logo icon -->
                <!-- Logo text -->
                <h1 class="text-center">
                    <a style="color: #d70018" href="yyy.html" class="font-weight-bold font-tahoma">
                        CellApples
                    </a>
                </h1>
            </a>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
               href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div style="background-color: #edf1f5" class="navbar-collapse collapse" id="bk-menu" data-navbarbg="skin5">
            <ul class="navbar-nav d-none d-md-block d-lg-none">
                <li class="nav-item">
                    <a class="nav-toggler nav-link waves-effect waves-light color-text-black"
                       href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </li>
            </ul>
            <!-- ============================================================== -->
            <!-- Right side toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav ml-auto d-flex align-items-center">

                <!-- ============================================================== -->
                <!-- Search -->
                <!-- ============================================================== -->
                <li class=" in">
                    <form st role="search" class="app-search d-none d-md-block mr-3">
                        <input style="background-color: #FFFFFF" type="text" placeholder="Tìm Kiếm..." class="form-control mt-0">
                        <a href="" class="active">
                            <i class="fa fa-search"></i>
                        </a>
                    </form>
                </li>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <li>
                    <a class="profile-pic" href="#">
                        <img src="/css/admin/plugins/images/users/varun.jpg" alt="user-img" width="36"
                             id="color-text-black " class="img-circle"><span class="font-medium">Kháng</span></a>
                </li>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
            </ul>
        </div>
    </nav>
</header>
<!-- ============================================================== -->
<!-- End Topbar header -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<aside class="left-sidebar" data-sidebarbg="skin6">
    <!-- Vertical Menu-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">

                <!-- User Profile-->
                <li class="sidebar-item pt-2">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href=""
                       aria-expanded="false">
                        <i class="far fa-clock" aria-hidden="true"></i>
                        <span class="hide-menu">Tổng Quan</span>
                    </a>
                </li>
                <li class="sidebar-item pt-2">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="account.html"
                       aria-expanded="false">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <span class="hide-menu">Thành Viên</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/css/admin/news.html"
                       aria-expanded="false">
                        <i class="fas fa-newspaper" aria-hidden="true"></i>
                        <span class="hide-menu">Tin Tức</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/css/admin/managentproduct.html"
                       aria-expanded="false">
                        <i class="fas fa-mobile-alt" aria-hidden="true"></i>
                        <span class="hide-menu">Kho Hàng</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/css/admin/map-google.html"
                       aria-expanded="false">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                        <span class="hide-menu">Bản Đồ</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/css/admin/rate.html"
                       aria-expanded="false">
                        <i class="fas fa-bars" aria-hidden="true"></i>
                        <span class="hide-menu">Đánh Giá</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/css/admin/404.html"
                       aria-expanded="false">
                        <i class="fa fa-info-circle" aria-hidden="true"></i>
                        <span class="hide-menu">Lỗi 404</span>
                    </a>
                </li>
            </ul>

        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Vertical Menu-->
</aside>

</body>

</html>
