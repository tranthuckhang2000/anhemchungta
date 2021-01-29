<%--
  Created by IntelliJ IDEA.
  User: khangtran
  Date: 05/01/2021
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>
    <meta charset="utf-8">
    <!-- Favicon icon -->
    <link rel="shortcut icon" type="image/png" href="<c:url value='/images/favicon.png'/>"/>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, Ample lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Ample admin lite dashboard bootstrap 4 dashboard template">
    <meta name="description"
          content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Quản Lý Sản Phẩm</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/"/>
    <!-- Custom-Files -->
    <link href="<c:url value ='/decorator/web/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- Bootstrap css -->
    <link href="<c:url value='/decorator/web/style.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!--     Main css-->
    <link rel="stylesheet" href="<c:url value='/decorator/web/fontawesome-all.css'/>">
    <!--     Font-Awesome-Icons-CSS-->
    <link href="<c:url value='//decorator/webpopuo-box.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!--     pop-up-box-->
    <link href="<c:url value='/decorator/web/menu.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!--     menu style-->

    <!-- Custom CSS -->
    <link href="<c:url value='/decorator/admin/plugins/bower_components/chartist/dist/chartist.min.css'/>"
          rel="stylesheet">
    <link rel="stylesheet"
          href="<c:url value='/decorator/admin/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css'/>">
    <!-- Custom CSS -->

    <link href="<c:url value='/decorator/admin/css/style.css'/>" rel="stylesheet">
    <link href="<c:url value='/decorator/admin/css/style.min.css'/>" rel="stylesheet">

    <%--    <link href="/css/admin/css/style.css" rel="stylesheet">--%>
    <%--    <link href="/css/admin/css/style.min.css" rel="stylesheet">--%>

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css"
          integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css"
          integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymous"/>
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

<!-- add product -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title-pro">Thêm Sản Phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="AddSmartphone" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Mã Sản Phẩm</label>
                        <input type="text" class="form-control" placeholder=" " name="masp" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Tên Sản Phẩm</label>
                        <input type="text" class="form-control" placeholder=" " name="ten_san_pham" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Giá Bán</label>
                        <input type="number" class="form-control" placeholder=" " name="gia" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ngay ra mắt</label>
                        <input type="Date" class="form-control" placeholder=" " name="ngay_ra_mat" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Giá Khuyến Mãi</label>
                        <input type="number" class="form-control" placeholder=" " name="gia_khuyen_mai" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ảnh mô tả 1</label>
                        <input type="text" class="form-control" placeholder=" " name="anh_mo_ta_1" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ảnh mô tả 2</label>
                        <input type="text" class="form-control" placeholder=" " name="anh_mo_ta_2" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ảnh mô tả 3</label>
                        <input type="text" class="form-control" placeholder=" " name="anh_mo_ta_3" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Màu</label>
                        <input type="text" class="form-control" placeholder=" " name="mau" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Thương Hiệu</label>
                        <input type="text" class="form-control" placeholder=" " name="thuong_hieu" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Màn Hình</label>
                        <input type="text" class="form-control" placeholder=" " name="man_hinh" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Kích Thước Màn Hình</label>
                        <input type="text" class="form-control" placeholder=" " name="kich_thuoc_man_hinh" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Hệ Điều Hành</label>
                        <input type="text" class="form-control" placeholder=" " name="he_dieu_hanh" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">CPU</label>
                        <input type="text" class="form-control" placeholder=" " name="cpu" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Camera Trước</label>
                        <input type="text" class="form-control" placeholder=" " name="camera_truoc" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Camera Sau</label>
                        <input type="text" class="form-control" placeholder=" " name="camera_sau" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Bộ Nhớ</label>
                        <input type="text" class="form-control" placeholder=" " name="bo_nho" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ram</label>
                        <input type="text" class="form-control" placeholder=" " name="ram" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Thẻ Sim</label>
                        <input type="text" class="form-control" placeholder=" " name="sim" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Pin</label>
                        <input type="text" class="form-control" placeholder=" " name="pin" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Mô Tả 1</label>
                        <input type="area" class="form-control" placeholder=" " name="mo_ta_1" required="">
                    </div>


                    <div class="form-group">
                        <label class="col-form-label">Mô Tả 2</label>
                        <input type="area" class="form-control" placeholder=" " name="mo_ta-2" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Mô Tả 3</label>
                        <input type="area" class="form-control" placeholder=" " name="mo_ta_3" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Số Lượng</label>
                        <input type="number" class="form-control" placeholder=" " name="so_luong" required="">
                    </div>

                    <div class="btn-sum">
                        <input type="submit" class="form-control-pro" value="Thêm">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- // add product -->

<!-- Modify product -->
<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title-pro">Chỉnh Sửa Thông Tin Sản Phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"></span>
                </button>
            </div>
            <div class="modal-body">
                <form action="AddSmartphone" method="post">

                    <div class="form-group">
                        <label class="col-form-label">Tên Sản Phẩm</label>
                        <input type="text" value="${d.ten_san_pham}" class="form-control" placeholder=" "
                               name="ten_san_pham" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Giá Bán</label>
                        <input type="number" class="form-control" value="${d.gia}" placeholder=" " name="gia"
                               required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ngay ra mắt</label>
                        <input type="Date" class="form-control" value="${d.ngay_ra_mat}" placeholder=" "
                               name="ngay_ra_mat" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Giá Khuyến Mãi</label>
                        <input type="number" class="form-control" value="${d.gia_khuyen_mai}" placeholder=" "
                               name="gia_khuyen_mai" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ảnh mô tả 1</label>
                        <input type="text" class="form-control" value="${d.anh_mo_ta_1}" placeholder=" "
                               name="anh_mo_ta_1" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ảnh mô tả 2</label>
                        <input type="text" class="form-control" value="${d.anh_mo_ta_2}" placeholder=" "
                               name="anh_mo_ta_2" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ảnh mô tả 3</label>
                        <input type="text" class="form-control" value="${d.anh_mo_ta_3}" placeholder=" "
                               name="anh_mo_ta_3" required="">

                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Màu</label>
                        <input type="text" class="form-control" value="${d.mau}" placeholder=" " name="mau" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Thương Hiệu</label>
                        <input type="text" class="form-control" value="${d.thuong_hieu}" placeholder=" "
                               name="thuong_hieu" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Màn Hình</label>
                        <input type="text" class="form-control" value="${d.man_hinh}" placeholder=" " name="man_hinh"
                               required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Kích Thước Màn Hình</label>
                        <input type="text" class="form-control" value="${d.kich_thuoc_man_hinh}" placeholder=" "
                               name="kich_thuoc_man_hinh" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Hệ Điều Hành</label>
                        <input type="text" class="form-control" value="${d.he_dieu_hanh}" placeholder=" "
                               name="he_dieu_hanh" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">CPU</label>
                        <input type="text" class="form-control" value="${d.cpu}" placeholder=" " name="cpu" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Camera Trước</label>
                        <input type="text" class="form-control" value="${d.camera_truoc}" placeholder=" "
                               name="camera_truoc" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Camera Sau</label>
                        <input type="text" class="form-control" value="${d.camera_sau}" placeholder=" "
                               name="camera_sau" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Bộ Nhớ</label>
                        <input type="text" class="form-control" value="${d.bo_nho}" placeholder=" " name="bo_nho"
                               required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Ram</label>
                        <input type="text" class="form-control" value="${d.ram}" placeholder=" " name="ram" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Thẻ Sim</label>
                        <input type="text" class="form-control" value="${d.the_sim}" placeholder=" " name="sim"
                               required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Pin</label>
                        <input type="text" class="form-control" value="${d.pin}" placeholder=" " name="pin" required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Mô Tả 1</label>
                        <input type="area" class="form-control" value="${d.mo_ta_1}" placeholder=" " name="mo_ta_1"
                               required="">
                    </div>


                    <div class="form-group">
                        <label class="col-form-label">Mô Tả 2</label>
                        <input type="area" class="form-control" value="${d.mo_ta_2}" placeholder=" " name="mo_ta-2"
                               required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Mô Tả 3</label>
                        <input type="area" class="form-control" value="${d.mo_ta_3}" placeholder=" " name="mo_ta_3"
                               required="">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Số Lượng</label>
                        <input type="number" class="form-control" value="${d.so_luong}" placeholder=" " name="so_luong"
                               required="">
                    </div>

                    <div class="btn-sum">
                        <input type="submit" class="form-control-pro" value="Thêm">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- // add Modify product -->


<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
     data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <%@include file="header.jsp" %>

    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper" style="min-height: 250px;">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb bg-white">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title text-uppercase font-medium font-14">Quản Lý Đơn Hàng</h4>
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
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="col-md-12">
                    <div class="white-box">
                        <form class="form-inline" action="#" method="post">
                            <input class="form-control mr-sm-2" type="search" placeholder="Tìm Kiếm..."
                                   aria-label="Search" required>
                            <button class="btn-search my-2 my-sm-0 mg-e" type="submit">Tìm Kiếm</button>
                        </form>
                        <button class="btn-search my-2 my-sm-0 mg-e mg-elm" type="submit">
                            <a href="#" data-toggle="modal" data-target="#exampleModal2" class="text-white">
                                Thêm Sản Phẩm</a>
                        </button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="white-box">
                        <div class="checkout-right">

                            <div class="table-responsive mg-elm">
                                <table class="timetable_sub">
                                    <thead>
                                    <tr>
                                        <th>MADH</th>
                                        <th>Ngày Giao</th>
                                        <th>Ngày </th>
                                        <th>Tổng Tiền</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${data}" var="d">
                                            <td class="invert">${d.madh}</td>
                                            <td class="invert">${d.ngay_dat}</td>
                                            <td class="invert">${d.ngay_giao}</td>
                                            <td class="item_price invert">${d.tong_tien}</td>

                                        </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="mg-elm">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right sidebar -->

            <%@include file="footer.jsp" %>
            <!-- ============================================================== -->
            <!-- .right-sidebar -->
            <!-- ============================================================== -->
            <!-- End Right sidebar -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->


        <!-- ============================================================== -->
        <!-- End footer -->
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
<!-- Bootstrap tether Core JavaScript -->
<script src="<c:url value='/decorator/admin/plugins/bower_components/popper.js/dist/umd/popper.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/decorator/admin/js/app-style-switcher.js'/>"></script>
<!--Wave Effects -->
<script src="/decorator/admin/js/waves.js"></script>
<!--Menu sidebar -->
<script src="<c:url value='/decorator/admin/js/sidebarmenu.js'/>"></script>
<!--Custom JavaScript -->
<script src="<c:url value='/decorator/admin/js/custom.js'/>"></script>

<!-- js-files -->
<!-- jquery -->
<script src="<c:url value='/decorator/web/js/jquery-2.2.3.min.js'/>"></script>
<!-- //jquery -->
<script>
    function formatVND(element) {
        return new Intl.NumberFormat('vi-VN', {
            style: 'currency',
            currency: 'VND'
        }).format(element);
    }

    let arraypricecc = document.getElementsByClassName("item_price");
    for (let i = 0; i < arraypricecc.length; i++)
        arraypricecc[i].innerHTML = formatVND(arraypricecc[i].innerHTML)

    let arraydiscount1 = document.getElementsByClassName("item_discount");
    for (let i = 0; i < arraydiscount1.length; i++) {
        arraydiscount1[i].innerHTML = Number.parseFloat(arraydiscount1[i].innerHTML).toFixed(0);
        arraydiscount1[i].innerHTML = formatVND(arraydiscount1[i].innerHTML)
    }
</script>

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

</script>

<!-- nav smooth scroll -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //nav smooth scroll -->

<!-- popup modal (for location)-->
<script src="<c:url value='/decorator/web/js/jquery.magnific-popup.js'/>"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- //popup modal (for location)-->

<!-- cart-js -->
<script src="<c:url value='/decorator/web/js/minicart.js'/>"></script>
<script>
    paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

    paypals.minicarts.cart.on('checkout', function (evt) {
        var items = this.items(),
            len = items.length,
            total = 0,
            i;

        // Count the number of each item in the cart
        for (i = 0; i < len; i++) {
            total += items[i].get('quantity');
        }

        if (total < 3) {
            alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
            evt.preventDefault();
        }
    });
</script>
<!-- //cart-js -->

<!-- password-script -->
<script>
    window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }
</script>
<!-- //password-script -->

<!-- quantity -->
<script>
    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) + 1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) - 1;
        if (newVal >= 1) divUpd.text(newVal);
    });
</script>


<!--quantity-->
<script>
    $(document).ready(function (c) {
        $('.close1').on('click', function (c) {
            $('.rem1').fadeOut('slow', function (c) {
                $('.rem1').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close2').on('click', function (c) {
            $('.rem2').fadeOut('slow', function (c) {
                $('.rem2').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close3').on('click', function (c) {
            $('.rem3').fadeOut('slow', function (c) {
                $('.rem3').remove();
            });
        });
    });
</script>
<!-- //quantity -->

<!-- smoothscroll -->
<script src="<c:url value='/decorator/web/js/SmoothScroll.min.js'/>"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- for bootstrap working -->
<script src="<c:url value='/decorator/web/js/bootstrap.js'/>"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->
</body>
</html>
