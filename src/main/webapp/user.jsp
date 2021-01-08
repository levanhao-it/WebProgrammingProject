<!--
=========================================================
* Paper Dashboard 2 - v2.0.1
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-dashboard-2
* Copyright 2020 Creative Tim (https://www.creative-tim.com)

Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Triple H | Food </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"> -->
    <!-- CSS Files -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="./assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, dont include it in your project -->
    <link href="./assets/demo/demo.css" rel="stylesheet"/>


</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt="" style=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="whishlist.html"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="shoping-cart.html"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <!-- <div class="header__cart__price">item: <span>$150.00</span></div> -->
    </div>
    <div class="humberger__menu__widget">
        <!-- <div class="header__top__right__language">
            <img src="img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div> -->
        <div class="header__top__right__auth">
            <a href="#" style="text-decoration: none;"><i class="fa fa-user"></i> Đăng Nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.html" style="text-decoration: none;">Trang Chủ</a></li>
            <li><a href="#" style="text-decoration: none;">Cửa Hàng</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./khaivi.html" style="text-decoration: none;">Khai vị</a></li>
                    <li><a href="./monchinh.html" style="text-decoration: none;">Món chính</a></li>
                    <li><a href="./trangmieng.html" style="text-decoration: none;">Tráng miệng</a></li>
                    <li><a href="./thucuong.html" style="text-decoration: none;">Đồ uống</a></li>
                </ul>
            </li>
            <li>
                <a href="./about-us.html" style="text-decoration: none;">Về Chúng Tôi</a>
            </li>
            <li><a href="./blog.html" style="text-decoration: none;">Blog</a></li>
            <li><a href="./contact.html" style="text-decoration: none;">Liên Hệ</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="https://www.facebook.com/Group12-100996871826770"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> group12@gmail.com</li>
            <!-- <li>Free Shipping for all Order of $99</li> -->
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@ include file="header.jsp" %>
<!-- Header Section End -->

<section class="hero  ">
    <div class="container">
        <div class="wrapper ">
            <div class="sidebar" data-color="white" data-active-color="danger" style="position: absolute;">
                <div class="logo">
                    <a href="https://www.creative-tim.com" class="simple-text logo-mini">
                        <div class="logo-image-small">
                            <img src="./assets/img/logo-small.png">
                        </div>
                        <!-- <p>CT</p> -->
                    </a>
                    <a href="https://www.creative-tim.com" class="simple-text logo-normal">
                        ${sessionScope.acc.userName}
                        <!-- <div class="logo-image-big">
        <img src="../assets/img/logo-big.png">
      </div> -->
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <div>
                        <ul class="nav">
                            <li class="active ">
                                <a href="./user.html">
                                    <i class="nc-icon nc-single-02"></i>
                                    <p>Thông Tin Tài Khoản</p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="nc-icon nc-bell-55"></i>
                                    <p>Thông Báo</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="main-panel" style="background-color: #f5e2b9">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <div class="navbar-toggle">
                                <button type="button" class="navbar-toggler">
                                    <span class="navbar-toggler-bar bar1"></span>
                                    <span class="navbar-toggler-bar bar2"></span>
                                    <span class="navbar-toggler-bar bar3"></span>
                                </button>
                            </div>
                            <a class="navbar-brand" href="javascript:;">Thông Tin Tài Khoản</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navigation" aria-controls="navigation-index" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">

                            <ul class="navbar-nav">

                                <li class="nav-item btn-rotate dropdown">
                                    <a class="nav-link dropdown-toggle" href="http://example.com"
                                       id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                        <i class="nc-icon nc-bell-55"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Some Actions</span>
                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right"
                                         aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link btn-rotate" href="javascript:;">
                                        <i class="nc-icon nc-settings-gear-65"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Tài Khoản</span>
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card card-user">
                                <div class="image">
                                    <img src="./assets/img/damir-bosnjak.jpg" alt="...">
                                </div>
                                <div class="card-body">
                                    <div class="author">
                                        <a href="#">
                                            <img class="avatar border-gray" src="../assets/img/mike.jpg" alt="...">
<%--                                            <h5 class="title">Lê Văn Hào</h5>--%>
                                        </a>
<%--                                        <p class="description">--%>
<%--                                            @haole1411--%>
<%--                                        </p>--%>
                                    </div>

                                </div>

                            </div>

                        </div>
                        <div class="col-md-8">
                            <div class="card card-user">
                                <div class="card-header">
                                    <h5 class="card-title">Chỉnh Sửa Hồ Sơ</h5>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="row">

                                            <div class="col-md-3 px-1" style="margin-left: 10px;">
                                                <div class="form-group">
                                                    <label>Tên Tài Khoản</label>
                                                    <input type="text" class="form-control"
                                                           placeholder="Tên Tài Khoản" value= ${sessionScope.acc.userName}>
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label>Mật Khẩu</label>
                                                    <input type="password" class="form-control" placeholder="Mật Khẩu"
                                                    value=${sessionScope.acc.password}>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Họ Tên</label>
                                                    <input type="text" class="form-control" placeholder="Họ Tên">
                                                </div>
                                            </div>
                                            <!-- <div class="col-md-6 pl-1">
                                                <div class="form-group">
                                                    <label>Tên</label>
                                                    <input type="text" class="form-control" placeholder="Last Name"
                                                        value="Hào">
                                                </div>
                                            </div> -->
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Địa Chỉ</label>
                                                    <input type="text" class="form-control"
                                                           placeholder="Địa Chỉ"
                                                           value="Linh Trung - Thủ Đức - Hồ Chí Minh">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Số Điện Thoại</label>
                                                    <input type="text" class="form-control"
                                                           placeholder="Số Điện Thoại"
<%--                                                           value="0369750752">--%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <!-- <div class="col-md-4 pr-1">
                                                <div class="form-group">
                                                    <label>Thành Phố</label>
                                                    <input type="text" class="form-control" placeholder="City"
                                                        value="Hồ Chí Minh">
                                                </div>
                                            </div>
                                            <div class="col-md-4 px-1">
                                                <div class="form-group">
                                                    <label>Quốc Gia</label>
                                                    <input type="text" class="form-control" placeholder="Country"
                                                        value="VietNam">
                                                </div>
                                            </div> -->
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" class="form-control"
                                                           placeholder="Email"
                                                           value= ${sessionScope.acc.email}>
                                                </div>
                                            </div>

                                        </div>
                                        <!-- <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Thông Tin</label>
                                                    <textarea class="form-control textarea">...</textarea>
                                                </div>
                                            </div>
                                        </div> -->
                                        <div class="row">
                                            <div class="update ml-auto mr-auto">
                                                <button type="submit" class="btn btn-primary btn-round"
                                                        style="background-color: #ff8928;">Cập Nhật Hồ
                                                    Sơ
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- Footer Section Begin -->
<%@ include file="footer.jsp" %>
<!-- Footer Section End -->

<!--   Core JS Files   -->

<script src="./assets/js/core/popper.min.js"></script>

<script src="./assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="./assets/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="./assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script>
<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="./assets/demo/demo.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>