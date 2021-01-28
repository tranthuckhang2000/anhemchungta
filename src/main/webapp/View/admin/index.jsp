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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image/png" href="/css/admin/favicon.png"/>
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
    <link href="<c:url value ='/decorator/web/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap css -->
    <link href="<c:url value='/decorator/web/style.css'/>" rel="stylesheet" type="text/css" media="all" />
    <!--     Main css-->
    <link rel="stylesheet" href="<c:url value='/decorator/web/fontawesome-all.css'/>">
    <!--     Font-Awesome-Icons-CSS-->
    <link href="<c:url value='//decorator/webpopuo-box.css'/>" rel="stylesheet" type="text/css" media="all" />
    <!--     pop-up-box-->
    <link href="<c:url value='/decorator/web/menu.css'/>" rel="stylesheet" type="text/css" media="all" />
    <!--     menu style-->

    <!-- Custom CSS -->
    <link href="<c:url value='/decorator/admin/plugins/bower_components/chartist/dist/chartist.min.css'/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/decorator/admin/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css'/>">
    <!-- Custom CSS -->

    <link href="<c:url value='/decorator/admin/css/style.css'/>" rel="stylesheet">
    <link href="<c:url value='/decorator/admin/css/style.min.css'/>" rel="stylesheet">

    <%--    <link href="/css/admin/css/style.css" rel="stylesheet">--%>
    <%--    <link href="/css/admin/css/style.min.css" rel="stylesheet">--%>

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/><link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css" integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css" integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymous"/>
</head>

<body>
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
     data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <%@include file="header.jsp"%>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb bg-white">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title text-uppercase font-medium font-14">Tổng Quan</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <div class="d-md-flex">

                    </div>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Three charts -->
            <!-- ============================================================== -->
            <div class="row justify-content-center">
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Tổng khách ghé thăm</h3>
                        <ul class="list-inline two-part d-flex align-items-center mb-0">
                            <li>
                                <div id="sparklinedash"><canvas width="67" height="30"
                                                                style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
                                </div>
                            </li>
                            <li class="ml-auto"><span class="counter text-success">659</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">tổng lượt truy cập</h3>
                        <ul class="list-inline two-part d-flex align-items-center mb-0">
                            <li>
                                <div id="sparklinedash2"><canvas width="67" height="30"
                                                                 style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
                                </div>
                            </li>
                            <li class="ml-auto"><span class="counter text-purple">1269</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">tổng truy cập duy nhất</h3>
                        <ul class="list-inline two-part d-flex align-items-center mb-0">
                            <li>
                                <div id="sparklinedash3"><canvas width="67" height="30"
                                                                 style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
                                </div>
                            </li>
                            <li class="ml-auto"><span class="counter text-info">911</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- PRODUCTS YEARLY SALES -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- RECENT SALES -->

            <!-- ============================================================== -->


            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12">
                    <div class="white-box">
                        <div class="d-md-flex mb-3">
                            <h3 class="box-title mb-0">Sản phẩm bán gần đây</h3>
                            <div class="col-md-3 col-sm-4 col-xs-6 ml-auto">
                                <select class="form-control row border-top">
                                    <option>2020</option>
                                    <option>2019</option>
                                    <option>2018</option>
                                </select>

                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table no-wrap">
                                <thead>
                                <tr>
                                    <th class="border-top-0">STT</th>
                                    <th class="border-top-0">TÊN</th>
                                    <th class="border-top-0">TÊN SẢN PHẨM</th>
                                    <th class="border-top-0">NGÀY</th>
                                    <th class="border-top-0">GIÁ</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td class="txt-oflo">Lê Quốc Anh</td>
                                    <td>iphone 8 plus 64GB</td>
                                    <td class="txt-oflo">11/03/2020</td>
                                    <td><span class="text-success">12.990.000</span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="txt-oflo">Mai Như Ngọc</td>
                                    <td>iphone Xs Max 512GB</td>
                                    <td class="txt-oflo">22/10/2020</td>
                                    <td><span class="text-info">23.990.000</span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="txt-oflo">Ngô Thanh Vân</td>
                                    <td>iphone 7 Plus 32GB</td>
                                    <td class="txt-oflo">13/04/2020</td>
                                    <td><span class="text-info">6.990.000</span></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td class="txt-oflo">Trần Thành Trung</td>
                                    <td>Ipad Air 3 Wifi</td>
                                    <td class="txt-oflo">19/07/2020</td>
                                    <td><span class="text-danger">13.490.000</span></td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- Recent Comments -->
            <!-- ============================================================== -->
            <div class="row">
                <!-- .col -->
                <div class="col-md-12 col-lg-8 col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title mb-0">bình luận gần đây</h3>
                        <div class="comment-center">
                            <div class="comment-body d-flex">
                                <div class="user-img"> <img src="/css/admin/plugins/images/users/pawandeep.jpg" alt="user"
                                                            class="img-circle">
                                </div>
                                <div class="mail-contnet">
                                    <h5>Quốc Anh</h5><span class="time">10:20 AM 20/05/2020</span>
                                    <br>
                                    <div class="mb-3 mt-3">
                                        <span class="mail-desc">Sản phẩm vô cùng tốt, đáng tiền</span>
                                    </div>
                                    <a href="javacript:void(0)"
                                       class="btn btn btn-rounded btn-default btn-outline mb-2 mb-md-0 m-r-5"><i
                                            class="ti-check text-success m-r-5"></i>Chấp thuận</a><a
                                        href="javacript:void(0)" class="btn-rounded btn btn-default btn-outline"><i
                                        class="ti-close text-danger m-r-5"></i>
                                    Từ chối</a>
                                </div>
                            </div>
                            <div class="comment-body d-flex">
                                <div class="user-img"> <img src="/css/admin/plugins/images/users/sonu.jpg" alt="user"
                                                            class="img-circle">
                                </div>
                                <div class="mail-contnet">
                                    <h5>Hoàn Anh</h5><span class="time">10:20 AM 19/05/2020</span>
                                    <br>
                                    <div class="mb-3 mt-3">
                                        <span class="mail-desc">Có hỗ trợ trả góp ko</span>
                                    </div>
                                </div>
                            </div>
                            <div class="comment-body d-flex border-0">
                                <div class="user-img"> <img src="/css/admin/plugins/images/users/arijit.jpg" alt="user"
                                                            class="img-circle">
                                </div>
                                <div class="mail-contnet">
                                    <h5>Như Ngọc</h5><span class="time">10:20 AM 12/04/2016</span>
                                    <br>
                                    <div class="mb-3 mt-3">
                                        <span class="mail-desc">Nhân viên tư vấn rất nhiệt tình</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="card-heading">
                            DANH SÁCH TRÒ CHUYỆN
                        </div>
                        <div class="card-body">
                            <ul class="chatonline">
                                <li>
                                    <div class="call-chat">
                                        <button class="btn btn-success text-white btn-circle btn" type="button">
                                            <i class="fas fa-phone"></i>
                                        </button>
                                        <button class="btn btn-info btn-circle btn" type="button">
                                            <i class="far fa-comments"></i>
                                        </button>
                                    </div>
                                    <a href="javascript:void(0)" class="d-flex align-items-center"><img
                                            src="/css/admin/plugins/images/users/varun.jpg" alt="user-img" class="img-circle">
                                        <div class="ml-2">
                                                <span class="text-dark text-muted">Hoàn Anh <small
                                                        class="d-block text-success d-block">trực tuyến</small></span>
                                        </div>
                                    </a>
                                </li>
                                <!--                                    <li>-->
                                <!--                                        <div class="call-chat">-->
                                <!--                                            <button class="btn btn-success text-white btn-circle btn" type="button">-->
                                <!--                                                <i class="fas fa-phone"></i>-->
                                <!--                                            </button>-->
                                <!--                                            <button class="btn btn-info btn-circle btn" type="button">-->
                                <!--                                                <i class="far fa-comments"></i>-->
                                <!--                                            </button>-->
                                <!--                                        </div>-->
                                <!--                                        <a href="javascript:void(0)" class="d-flex align-items-center"><img-->
                                <!--                                                src="plugins/images/users/genu.jpg" alt="user-img" class="img-circle">-->
                                <!--                                            <div class="ml-2">-->
                                <!--                                                <span class="text-dark text-muted">Hoàn Hà-->
                                <!--                                                    Deshmukh <small class="d-block text-warning">gtgtr</small></span>-->
                                <!--                                            </div>-->
                                <!--                                        </a>-->
                                <!--                                    </li>-->
                                <!--                                    <li>-->
                                <!--                                        <div class="call-chat">-->
                                <!--                                            <button class="btn btn-success text-white btn-circle btn" type="button">-->
                                <!--                                                <i class="fas fa-phone"></i>-->
                                <!--                                            </button>-->
                                <!--                                            <button class="btn btn-info btn-circle btn" type="button">-->
                                <!--                                                <i class="far fa-comments"></i>-->
                                <!--                                            </button>-->
                                <!--                                        </div>-->
                                <!--                                        <a href="javascript:void(0)" class="d-flex align-items-center"><img-->
                                <!--                                                src="plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle">-->
                                <!--                                            <div class="ml-2">-->
                                <!--                                                <span class="text-dark text-muted">Ritesh-->
                                <!--                                                    Deshmukh <small class="d-block text-danger">Busy</small></span>-->
                                <!--                                            </div>-->
                                <!--                                        </a>-->
                                <!--                                    </li>-->
                                <li>
                                    <div class="call-chat">
                                        <button class="btn btn-success text-white btn-circle btn" type="button">
                                            <i class="fas fa-phone"></i>
                                        </button>
                                        <button class="btn btn-info btn-circle btn" type="button">
                                            <i class="far fa-comments"></i>
                                        </button>
                                    </div>
                                    <a href="javascript:void(0)" class="d-flex align-items-center"><img
                                            src="/css/admin/plugins/images/users/arijit.jpg" alt="user-img" class="img-circle">
                                        <div class="ml-2">
                                                <span class="text-dark text-muted">Như Ngọc
                                                    Sinh <small class="d-block text-muted">ngoại tuyến</small></span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="call-chat">
                                        <button class="btn btn-success text-white btn-circle btn" type="button">
                                            <i class="fas fa-phone"></i>
                                        </button>
                                        <button class="btn btn-info btn-circle btn" type="button">
                                            <i class="far fa-comments"></i>
                                        </button>
                                    </div>
                                    <a href="javascript:void(0)" class="d-flex align-items-center"><img
                                            src="/css/admin/plugins/images/users/govinda.jpg" alt="user-img"
                                            class="img-circle">
                                        <div class="ml-2">
                                                <span class="text-dark text-muted">Tú Như
                                                     <small class="d-block text-success">online</small></span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="call-chat">
                                        <button class="btn btn-success text-white btn-circle btn" type="button">
                                            <i class="fas fa-phone"></i>
                                        </button>
                                        <button class="btn btn-info btn-circle btn" type="button">
                                            <i class="far fa-comments"></i>
                                        </button>
                                    </div>
                                    <a href="javascript:void(0)" class="d-flex align-items-center"><img
                                            src="/css/admin/plugins/images/users/hritik.jpg" alt="user-img" class="img-circle">
                                        <div class="ml-2">
                                            <span class="text-dark text-muted">Hải Anh<small class="d-block text-success">online</small></span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="call-chat">
                                        <button class="btn btn-success text-white btn-circle btn" type="button">
                                            <i class="fas fa-phone"></i>
                                        </button>
                                        <button class="btn btn-info btn-circle btn" type="button">
                                            <i class="far fa-comments"></i>
                                        </button>
                                    </div>
                                    <a href="javascript:void(0)" class="d-flex align-items-center"><img
                                            src="/css/admin/plugins/images/users/varun.jpg" alt="user-img" class="img-circle">
                                        <div class="ml-2">
                                                <span class="text-dark text-muted">Varun
                                                    Dhavan <small class="d-block text-success">online</small></span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /.col -->
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <%@include file="footer.jsp"%>
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="<c:url value='/decorator/admin/plugins/bower_components/jquery/dist/jquery.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/plugins/bower_components/popper.js/dist/umd/popper.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/js/app-style-switcher.js'/>"></script>
<script src="<c:url value='/decorator/admin/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/js/waves.js'/>"></script>
<script src="<c:url value='/decorator/admin/js/sidebarmenu.js'/>"></script>
<script src="<c:url value='/decorator/admin/js/custom.js'/>"></script>

<script src="<c:url value='/decorator/admin/plugins/bower_components/chartist/dist/chartist.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js'/>"></script>
<script src="<c:url value="/decorator/admin/js/pages/dashboards/dashboard1.js"/>"></script>
</body>

</html>
