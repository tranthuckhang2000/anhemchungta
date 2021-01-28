<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: khangtran
  Date: 05/01/2021
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image/png" href="../../admin/favicon.png"/>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, Ample lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Ample admin lite dashboard bootstrap 4 dashboard template">
    <meta name="description"
          content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Tổng Quan</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <!--    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png">-->
    <!-- Custom-Files -->
    <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap css -->
    <link href="../../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--     Main css-->
    <link rel="stylesheet" href="../../css/fontawesome-all.css">
    <!--     Font-Awesome-Icons-CSS-->
    <link href="../../css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!--     pop-up-box-->
    <link href="../../css/menu.css" rel="stylesheet" type="text/css" media="all" />
    <!--     menu style-->

    <!-- Custom CSS -->
    <link href="../../admin/plugins/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../admin/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <!-- Custom CSS -->

    <link href="../../admin/css/style.css" rel="stylesheet">
    <link href="../../admin/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/><link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css" integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css" integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymous"/>
</head>

<body>
<!-- ============================================================== -->
<!-- Topbar header - style you can find in pages.scss -->
<!-- ============================================================== -->
<header class="topbar" data-navbarbg="skin5">
    <nav style="background-color: #FFFFFF" class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header" data-logobg="skin6">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <a class="navbar-brand" href="../View/admin/index.html">
                <!-- Logo icon -->
                <!--                        <b class="logo-icon">-->
                <!--                            &lt;!&ndash; Dark Logo icon &ndash;&gt;-->
                <!--                            <img src="plugins/images/logo-icon.png" alt="homepage" />-->
                <!--                        </b>-->
                <!--End Logo icon -->
                <!-- Logo text -->
                <h1 class="text-center">
                    <a style="color: #d70018" href="../View/admin/index.html" class="font-weight-bold font-tahoma">
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
                        <img src="plugins/images/users/varun.jpg" alt="user-img" width="36"
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
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../View/admin/index.html"
                       aria-expanded="false">
                        <i class="far fa-clock" aria-hidden="true"></i>
                        <span class="hide-menu">Tổng Quan</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../View/admin/account.html"
                       aria-expanded="false">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <span class="hide-menu">Thành Viên</span>
                    </a>
                </li>
                <li class="sidebar-item pt-2">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="news.html"
                       aria-expanded="">
                        <i class="fas fa-newspaper" aria-hidden="true"></i>
                        <span class="hide-menu">Tin Tức</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="managentproduct.html"
                       aria-expanded="false">
                        <i class="fas fa-mobile-alt" aria-hidden="true"></i>
                        <span class="hide-menu">Kho Hàng</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="map-google.html"
                       aria-expanded="false">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                        <span class="hide-menu">Bản Đồ</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="rate.html"
                       aria-expanded="false">
                        <i class="fas fa-bars" aria-hidden="true"></i>
                        <span class="hide-menu">Đánh Giá</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="404.html"
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
